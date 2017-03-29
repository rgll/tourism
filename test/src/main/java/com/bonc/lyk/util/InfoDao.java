package com.bonc.lyk.util;

/**
 * 告警信息
 * 
 * @author lishuai
 *
 */
public class InfoDao {
	private String HOST_IP;// 告警IP : HOST_IP
	private String HOST_NAME;// 告警主机: HOST_NAME
	private String TRIGGER_SEVERITY;// 告警级别: TRIGGER_SEVERITY
	private String EVENT_DTIME;// 告警时间: EVENT_DTIME
	private String TRIGGER_NAME;// 告警问题: TRIGGER_NAME
	private String TRIGGER_STATUS;// 告警状态: TRIGGER_STATUS
	private String ITEM_NAME;// 问题详情: ITEM_NAME
	private String EVENT_ID;// 事件ID : EVENT_ID
	private String Party_ID;// 部门ID: Party_ID

	public InfoDao() {
		super();
	}

	// 给InfoDao对象赋值
	public InfoDao(String HOST_IP, String HOST_NAME, String TRIGGER_SEVERITY, String EVENT_DTIME, String TRIGGER_NAME, String TRIGGER_STATUS, 
			 String ITEM_NAME, String EVENT_ID, String Party_ID) {
		this.HOST_IP = HOST_IP;
		this.HOST_NAME = HOST_NAME;
		this.TRIGGER_SEVERITY = TRIGGER_SEVERITY;
		this.EVENT_DTIME = EVENT_DTIME;
		this.TRIGGER_NAME = TRIGGER_NAME;
		this.TRIGGER_STATUS = TRIGGER_STATUS;
		this.ITEM_NAME = ITEM_NAME;
		this.EVENT_ID = EVENT_ID;
		this.Party_ID = Party_ID;
	}

	// 将字符串转化为对应的InfoDao
	public InfoDao(String[] strings) {
		this.HOST_NAME = strings[0];
		this.HOST_IP = strings[1];
		this.TRIGGER_NAME = strings[2];
		this.TRIGGER_STATUS = strings[3];
		this.EVENT_DTIME = strings[4];
		this.TRIGGER_SEVERITY = strings[5];
		this.ITEM_NAME = strings[6];
		this.EVENT_ID = strings[7];
		this.Party_ID = strings[8];
	}

	public String getHOST_NAME() {
		return HOST_NAME;
	}

	public void setHOST_NAME(String hOST_NAME) {
		HOST_NAME = hOST_NAME;
	}

	public String getHOST_IP() {
		return HOST_IP;
	}

	public void setHOST_IP(String hOST_IP) {
		HOST_IP = hOST_IP;
	}

	public String getTRIGGER_NAME() {
		return TRIGGER_NAME;
	}

	public void setTRIGGER_NAME(String tRIGGER_NAME) {
		TRIGGER_NAME = tRIGGER_NAME;
	}

	public String getTRIGGER_STATUS() {
		return TRIGGER_STATUS;
	}

	public void setTRIGGER_STATUS(String tRIGGER_STATUS) {
		TRIGGER_STATUS = tRIGGER_STATUS;
	}

	public String getEVENT_DTIME() {
		return EVENT_DTIME;
	}

	public void setEVENT_DTIME(String eVENT_DTIME) {
		EVENT_DTIME = eVENT_DTIME;
	}

	public String getTRIGGER_SEVERITY() {
		return TRIGGER_SEVERITY;
	}

	public void setTRIGGER_SEVERITY(String tRIGGER_SEVERITY) {
		TRIGGER_SEVERITY = tRIGGER_SEVERITY;
	}

	public String getITEM_NAME() {
		return ITEM_NAME;
	}

	public void setITEM_NAME(String iTEM_NAME) {
		ITEM_NAME = iTEM_NAME;
	}

	public String getEVENT_ID() {
		return EVENT_ID;
	}

	public void setEVENT_ID(String eVENT_ID) {
		EVENT_ID = eVENT_ID;
	}

	public String getParty_ID() {
		return Party_ID;
	}

	public void setParty_ID(String party_ID) {
		Party_ID = party_ID;
	}

	// 将InfoDao对象转化为字符串
	public String toString(String HOST_NAME, String HOST_IP, String TRIGGER_NAME, String TRIGGER_STATUS,
			String EVENT_DTIME, String TRIGGER_SEVERITY, String ITEM_NAME, String EVENT_ID, String Party_ID) {

		return HOST_NAME + ";" + HOST_IP + ";" + TRIGGER_NAME + ";" + TRIGGER_STATUS + ";" + EVENT_DTIME + ";"
				+ TRIGGER_SEVERITY + ";" + ITEM_NAME + ";" + EVENT_ID + ";" + Party_ID;

	}

}
