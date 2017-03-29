package com.bonc.lyk.api;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bonc.lyk.constant.BaseConstant;
import com.bonc.lyk.monitor.ReturnObj;
import com.bonc.lyk.service.GetBW;
import com.bonc.lyk.service.GetDisk;
import com.bonc.lyk.service.GetFileNum;
import com.bonc.lyk.service.GetHistoryAndTrend;
import com.bonc.lyk.util.DefaultZabbixApi;
import com.bonc.lyk.util.Request;
import com.bonc.lyk.util.ZabbixApi;
import com.bonc.lyk.util.ZabbixUrl;

/**
 * 资源接口：FTP接口开发
 * 
 * @author lishuai
 *
 */
@RestController
@RequestMapping("/api")
public class FTPController {
	private final static Logger LOG = LoggerFactory.getLogger(FTPController.class);
	
	/**
	 * 
	 * @param auth
	 * @param host
	 *            主机名
	 * @param tenantID
	 *            租户ID
	 * @return
	 */
	@RequestMapping(value = "/{tenantID}/ftp/get", method = RequestMethod.GET)
	public Object itemGet(@PathVariable("tenantID") String tenantID, @RequestParam(required = true) String auth,
			@RequestParam(required = true) String host) {
		ZabbixApi zabbixApi = new DefaultZabbixApi(ZabbixUrl.ZABBIX_API_URL);
		zabbixApi.init();
		Request request = null;
		JSONObject response = null;
		JSONArray array = null;// 获取json对象中的key为result的json数组
		JSONObject jsonObject = null;// 当获取json数组为null时,数组中添加一个Object对象
		Map<String, Object> map;// 当获取json数组为null时，添加一个map.put("lastvalue", "");
		// 存储
		request = GetDisk.getFtp(auth, host, tenantID);
		response = zabbixApi.call(request);
		array = response.getJSONArray("result");
		if (array.isEmpty()) {
			map = new HashMap<String, Object>();
			map.put("lastvalue", "");
			jsonObject = new JSONObject(map);
			array.add(jsonObject);
		}
		String diskValue = array.getJSONObject(0).getString("lastvalue");
		// 文件个数
		request = GetFileNum.getFtp(auth, host, tenantID);
		response = zabbixApi.call(request);
		array = response.getJSONArray("result");
		if (array.isEmpty()) {
			map = new HashMap<String, Object>();
			map.put("lastvalue", "");
			jsonObject = new JSONObject(map);
			array.add(jsonObject);
		}
		String fileNum = array.getJSONObject(0).getString("lastvalue");
		// 网络流量
		request = GetBW.getBw(auth, host);
		response = zabbixApi.call(request);
		array = response.getJSONArray("result");
		if (array.isEmpty()) {
			map = new HashMap<String, Object>();
			map.put("lastvalue", "");
			jsonObject = new JSONObject(map);
			array.add(jsonObject);
		}
		String bindWidth = array.getJSONObject(0).getString("lastvalue");
		String str = "[{'文件数':'" + fileNum + "','存储':'" + diskValue + "','带宽':'" + bindWidth + "'}]";
		LOG.info("返回结果：" + str);
		JSONArray result = JSONArray.parseArray(str);
		return new ReturnObj(BaseConstant.STATUS_OK, "获取成功", result);
	}

	/*
	 * 文件数历史趋势数据
	 */
	@RequestMapping("/{tenantID}/ftp/fileNum/history/get")
	public Object fileNumHistoryGet(@PathVariable("tenantID") String tenantID,
			@RequestParam(required = true) String host, @RequestParam(required = true) String auth, String timeFrom,
			String timeTill) {
		Request request = GetFileNum.getFtp(auth, host, tenantID);
		return GetHistoryAndTrend.historyGet(request, auth, timeFrom, timeTill);
	}

	@RequestMapping("/{tenantID}/ftp/fileNum/trend/get")
	public Object fileNumTrendGet(@PathVariable("tenantID") String tenantID, @RequestParam(required = true) String host,
			@RequestParam(required = true) String auth, String timeFrom, String timeTill, String isDetail) {
		Request request = GetFileNum.getFtp(auth, host, tenantID);
		return GetHistoryAndTrend.trendGet(request, auth, timeFrom, timeTill, isDetail);
	}

	/*
	 * 硬件存储历史趋势数据
	 */
	@RequestMapping("/{tenantID}/ftp/disk/history/get")
	public Object diskHistoryGet(@PathVariable("tenantID") String tenantID, @RequestParam(required = true) String host,
			@RequestParam(required = true) String auth, String timeFrom, String timeTill) {
		Request request = GetDisk.getFtp(auth, host, tenantID);
		return GetHistoryAndTrend.historyGet(request, auth, timeFrom, timeTill);
	}

	@RequestMapping("/{tenantID}/ftp/disk/trend/get")
	public Object diskTrendGet(@PathVariable("tenantID") String tenantID, @RequestParam(required = true) String host,
			@RequestParam(required = true) String auth, String timeFrom, String timeTill, String isDetail) {
		Request request = GetDisk.getFtp(auth, host, tenantID);
		return GetHistoryAndTrend.trendGet(request, auth, timeFrom, timeTill, isDetail);
	}
	
	@RequestMapping("/{tenantID}/ftp/disk/trend/get2")
	public Object diskTrendGet2(@PathVariable("tenantID") String tenantID, @RequestParam(required = true) String host,
			@RequestParam(required = true) String auth, String timeFrom, String timeTill, String isDetail) {
	//	Request request = GetDisk.getFtp(auth, host, tenantID);
	//	return GetHistoryAndTrend.trendGet(request, auth, timeFrom, timeTill, isDetail);
		String str = "[{'value_avg':'16074480','num':'19','value_max':'15074480','clock':'1473696552','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'17074480','num':'20','value_max':'15074480','clock':'1473700152','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'18074480','num':'21','value_max':'15074480','clock':'1473703752','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'25074480','num':'22','value_max':'15074480','clock':'1473707352','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'45074480','num':'23','value_max':'15074480','clock':'1473710952','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'35074480','num':'24','value_max':'15074480','clock':'1473714552','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'15074480','num':'25','value_max':'15074480','clock':'1473718152','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'45074480','num':'26','value_max':'15074480','clock':'1473721752','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'55074480','num':'27','value_max':'15074480','clock':'1473725352','value_min':'15074480','itemid':'187214'},"
				+ "{'value_avg':'25074480','num':'28','value_max':'15074480','clock':'1473728952','value_min':'15074480','itemid':'187214'}]";
		JSONArray result = JSONArray.parseArray(str);
		System.err.println(result);
		return new ReturnObj(BaseConstant.STATUS_OK, "获取成功", result);
	}
}
