package com.bonc.lyk.service;

import com.alibaba.fastjson.JSONObject;
import com.bonc.lyk.util.Request;
import com.bonc.lyk.util.RequestBuilder;

/**
 * 向监控系统发送Disk（存储）数据采集的请求
 * 
 * @author lishuai
 *
 */
public class GetDisk {
	/*
	 * FTP:Ftp.directorySize
	 */
	public static Request getFtp(String auth, String host, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/user/" + name + ".Ftp.directorySize");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", host).paramEntry("search", searchObj).paramEntry("sortfield", "name").build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * 物理机与虚拟机：Used disk space on
	 */
	public static Request getMachineUsed(String auth, String host) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "Used disk space on");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", host).paramEntry("search", searchObj).paramEntry("sortfield", "name").build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * Hbase:Hbase.directorySize
	 */
	public static Request getHbase(String auth, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/user/" + name + ".Hbase.directorySize");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-613").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * Hive:Hive.directorySize
	 */
	public static Request getHive(String auth, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/user/" + name + ".Hive.directorySize");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-614").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * Spark:Spark.directorySize
	 */
	public static Request getSpark(String auth, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/user/" + name + ".Spark.directorySize");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-615").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * Impala:Impala.directorySize
	 */
	public static Request getImpala(String auth, String name) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", "/user/" + name + ".Impala.directorySize");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-616").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * oracle12c:{登录名}.oracle12c_storage DSJ-signal-4T-610
	 */
	public static Request getOracle12c(String auth, String username) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", username + ".oracle12c_storage");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-610").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * oracle11g:{登录名}.oracle11g_storage DSJ-signal-4T-610
	 */
	public static Request getOracle11g(String auth, String username) {
		JSONObject searchObj = new JSONObject();
		searchObj.put("name", username + ".oracle11g_storage");
		Request request = RequestBuilder.newBuilder().method("item.get").paramEntry("output", "extend")
				.paramEntry("host", "DSJ-signal-4T-610").paramEntry("search", searchObj).paramEntry("sortfield", "name")
				.build();
		request.setAuth(auth);
		return request;
	}

	/*
	 * Kafka:Kafka.directorySize
	 */
	// public static Request getKafka(String auth, String host, String
	// searchName) {
	// JSONObject searchObj = new JSONObject();
	// searchObj.put("name", "/user/" + searchName + "/Kafka.directorySize");
	// Request request =
	// RequestBuilder.newBuilder().method("item.get").paramEntry("output",
	// "extend")
	// .paramEntry("host", host).paramEntry("search",
	// searchObj).paramEntry("sortfield", "name").build();
	// request.setAuth(auth);
	// return request;
	// }

}
