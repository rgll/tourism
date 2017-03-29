package com.bonc.lyk.util;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class RunShell {
	private static Logger logger = LoggerFactory.getLogger(RunShell.class);

	public static void go(String key, InfoDao dao) throws IOException {
		String message ="告警主机："+ dao.getHOST_NAME() + "/t" +
	                    "告警IP："+dao.getHOST_IP() + "/t" + 
				        "告警问题："+dao.getTRIGGER_NAME() + "/t"+ 
				        "告警状态："+dao.getTRIGGER_STATUS() + "/t" + 
				        "告警时间："+dao.getEVENT_DTIME() + "/t" + 
				        "告警级别："+dao.getTRIGGER_SEVERITY() + "/t"+
				        "问题详情："+dao.getITEM_NAME() + "/t" + 
				        "事件ID："+dao.getEVENT_ID();
		String command="./script/weixin.sh"+" "+key+" "+message;
		Process proc = Runtime.getRuntime().exec(command);
		InputStreamReader ir = new InputStreamReader(proc.getInputStream());
		LineNumberReader input = new LineNumberReader(ir);
		String line = null;
		while ((line = input.readLine()) != null) {
			System.out.println(line);
		}
		if (null != input) {
			input.close();
		}
		if (null != ir) {
			ir.close();
		}
		try {
			int extValue = proc.waitFor();// 返回码 0 表示正常退出 1表示异常退出
			System.out.println(extValue);
		} catch (InterruptedException e) {
			e.printStackTrace();
			logger.debug("发送失败！");
		}
    }
}
