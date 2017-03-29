package com.bonc.lyk.service;

import com.alibaba.fastjson.JSONObject;
import com.bonc.lyk.util.Request;
import com.bonc.lyk.util.RequestBuilder;

/**
 * 向监控系统发送文件数（FileNum）数据采集的请求
 * 
 * @author lishuai
 *
 */
public class GetFileNum {
	/*
	 * Hbase:Hbase.fileNum
	 */
	public static Request getHbase(String auth, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/hbase_" + name + ".Hbase.fileNum");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-613").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * Hive:Hive.fileNum
	 */
	public static Request getHive(String auth, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/user/" + name + ".Hive.fileNum");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-614").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * Spark:Spark.fileNum
	 */
	public static Request getSpark(String auth, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/user/" + name + ".Spark.fileNum");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-615").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * Impala:Impala.fileNum
	 */
	public static Request getImpala(String auth, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/user/" + name + ".Impala.fileNum");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-616").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * FTP:FTP.fileNum
	 * 
	 * @author liulei
	 */
	public static Request getFtp(String auth, String host, String name) {
		JSONObject searchObj = new JSONObject();
		if (host.equals("DSJ-signal-4T-640")) {
			searchObj.put("name", name + ".Ftp.filecount");
		} else if (host.equals("DSJ-signal-4T-641")) {
			// 根据name前四位是否为open,采用不同对应方式
			if (name.substring(0, 4).equals("open")) {
				// 根据name最后三位是否为数字,采用不同对应关系
				if (name.charAt(name.length() - 1) < 'a' && name.charAt(name.length() - 2) < 'a'
						&& name.charAt(name.length() - 3) < 'a') {
					name = name.substring(name.lastIndexOf("_") + 1);
					searchObj.put("name", name + ".Ftp.filecount");
				} else {
					searchObj.put("name", name + ".Ftp.filecount");
				}
			} else if (name.substring(0, 4).equals("opdn")) {
				searchObj.put("name", name + ".Ftp.filecount");
			}

		}

		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", host).paramEntry("search", searchObj).paramEntry("sortfield", "name").build();
		request.setAuth(auth);
		return request;
	}

}
