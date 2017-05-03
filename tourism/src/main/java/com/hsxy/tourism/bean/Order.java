package com.hsxy.tourism.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * ClassName: Order订单表 <br/>
 * date: 2017年4月3日 上午11:41:40 <br/>
 * 
 * @author Administrator
 * @version
 * @since JDK 1.8
 */
@Entity
@Table(name = "s_order")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "orderId", length = 10)
	private int orderId;

	@Column(name = "orderMoney")
	private int orderMoney; // 订单价格

	@Column(name = "time")
	private Date time;// 订单时间

	@Column(name = "tacketId")
	private int tacketId;// 门票id

	@Column(name = "userName")
	private String userName; // 用户名

	public Order() {
		super();
	}

	public Order(Integer orderId, int orderMoney, Date time, int tacketId, String userName) {
		super();
		this.orderId = orderId;
		this.orderMoney = orderMoney;
		this.time = time;
		this.tacketId = tacketId;
		this.userName = userName;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public int getOrderMoney() {
		return orderMoney;
	}

	public void setOrderMoney(int orderMoney) {
		this.orderMoney = orderMoney;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public int getTacketId() {
		return tacketId;
	}

	public void setTacketId(int tacketId) {
		this.tacketId = tacketId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderMoney=" + orderMoney + ", time=" + time + ", tacketId=" + tacketId
				+ ", userName=" + userName + "]";
	}

}
