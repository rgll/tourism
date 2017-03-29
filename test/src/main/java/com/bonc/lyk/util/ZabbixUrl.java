package com.bonc.lyk.util;

import org.springframework.beans.factory.annotation.Value;

public class ZabbixUrl {
	@Value("${zabbix.api.url}")
	public static String ZABBIX_API_URL = "http://10.162.6.13:20080/zabbix/api_jsonrpc.php";

}
