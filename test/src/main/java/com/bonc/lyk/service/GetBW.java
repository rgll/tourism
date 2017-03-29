package com.bonc.lyk.service;


import com.alibaba.fastjson.JSONObject;
import com.bonc.lyk.util.Request;
import com.bonc.lyk.util.RequestBuilder;

/**
 * 获取带宽（BW）流量
 * 
 * @author lishuai
 *
 */
public class GetBW {
	public static Request getBw(String auth, String host) {
		Request request = null;
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "Ftp1-Network-out");
		if (host.equals("DSJ-signal-4T-641")) {
			request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
					.paramEntry("host", "DSJ-DATAJX-900G-15").paramEntry("search", searchObj)
					.paramEntry("sortfield", "name").build();

		} else if (host.equals("DSJ-signal-4T-640")) {
			request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
					.paramEntry("host", "OSS-WOJS-13").paramEntry("search", searchObj).paramEntry("sortfield", "name")
					.build();

		} else {
			request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
					.paramEntry("host", "SJ-DATAJX-900G-15").paramEntry("search", searchObj)
					.paramEntry("sortfield", "name").build();
		}
		request.setAuth(auth);
		return request;
	}

}
