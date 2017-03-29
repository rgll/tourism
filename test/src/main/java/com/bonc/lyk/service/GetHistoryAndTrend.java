/*
 * 文件名：GetHistoryAndTrend.java
 * 版权：Copyright by www.huawei.com
 * 描述：
 * 修改人：ll
 * 修改时间：2016年9月6日
 * 跟踪单号：
 * 修改单号：
 * 修改内容：
 */

package com.bonc.lyk.service;

import java.math.BigDecimal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bonc.lyk.api.FTPController;
import com.bonc.lyk.constant.BaseConstant;
import com.bonc.lyk.monitor.ReturnObj;
import com.bonc.lyk.util.DefaultZabbixApi;
import com.bonc.lyk.util.Request;
import com.bonc.lyk.util.RequestBuilder;
import com.bonc.lyk.util.ZabbixApi;
import com.bonc.lyk.util.ZabbixUrl;

/**
 * 
 * 获取历史和趋势数据的公共方法类
 * @author liulei
 * @version 2016年9月6日
 * @see GetHistoryAndTrend
 * @since
 */
public class GetHistoryAndTrend {
    private final static Logger LOG = LoggerFactory.getLogger(FTPController.class);
    
    public static Object historyGet(Request request, String auth, String timeFrom, String timeTill) {
        ZabbixApi zabbixApi = new DefaultZabbixApi(ZabbixUrl.ZABBIX_API_URL);
        zabbixApi.init();
        JSONObject response = null;
        response = zabbixApi.call(request);
        String itemids = response.getJSONArray("result").getJSONObject(0).getString("itemid");
        request = RequestBuilder.newBuilder().method("history.get").paramEntry("outout", "extent")
                .paramEntry("history", "3").paramEntry("itemids", itemids).paramEntry("sortfield", "clock")
                .paramEntry("time_from", timeFrom).paramEntry("time_till", timeTill).paramEntry("sortorder", "DESC")
                .paramEntry("limit", "1").build();
        request.setAuth(auth);
        JSONObject getResponse = zabbixApi.call(request);
        LOG.info("getResponse:" + getResponse);
        JSONArray result = getResponse.getJSONArray("result");
        return new ReturnObj(BaseConstant.STATUS_OK, "成功", result);
    }
    
    public static Object trendGet(Request request, String auth, String timeFrom,
        String timeTill, String isDetail) {
        ZabbixApi zabbixApi = new DefaultZabbixApi(ZabbixUrl.ZABBIX_API_URL);
        zabbixApi.init();
        JSONObject response = null;
        response = zabbixApi.call(request);
        String itemids = response.getJSONArray("result").getJSONObject(0).getString("itemid");
        request = RequestBuilder.newBuilder().method("trend.get").paramEntry("itemids", itemids)
                .paramEntry("time_from", timeFrom).paramEntry("time_till", timeTill).build();
        request.setAuth(auth);
        JSONObject getResponse = zabbixApi.call(request);
        LOG.info("getResponse:" + getResponse);
        JSONArray result = getResponse.getJSONArray("result");
        if ("1".equals(isDetail)) {
            return new ReturnObj(BaseConstant.STATUS_OK, "成功", result);
        }
        BigDecimal min = new BigDecimal(0);
        BigDecimal max = new BigDecimal(0);
        BigDecimal avg = new BigDecimal(0);
        if (!result.isEmpty()) {
           BigDecimal minSum = new BigDecimal(0);
           BigDecimal maxSum = new BigDecimal(0);
           BigDecimal avgSum = new BigDecimal(0);
           BigDecimal count = new BigDecimal(result.size());
           for (int i = 0; i < result.size(); i++) {
               JSONObject jsonObj = result.getJSONObject(i);
               minSum = minSum.add(new BigDecimal(jsonObj.getString("value_min")));
               avgSum = avgSum.add(new BigDecimal(jsonObj.getString("value_avg")));
               maxSum = maxSum.add(new BigDecimal(jsonObj.getString("value_max")));
           }
           min = minSum.divide(count);
           max = maxSum.divide(count);
           avg = avgSum.divide(count);
       }
       JSONArray returnArray = new JSONArray();
       JSONObject returnObj = new JSONObject();
       returnObj.put("value_min", min);
       returnObj.put("value_avg", avg);
       returnObj.put("value_max", max);
       returnArray.add(returnObj);
       return new ReturnObj(BaseConstant.STATUS_OK, "成功", returnArray);
   }
}
