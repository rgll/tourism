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
 * ClassName: Strategy攻略表 <br/>
 * date: 2017年4月3日 上午11:40:52 <br/>
 * 
 * @author Administrator
 * @version
 * @since JDK 1.8
 */
@Entity
@Table(name = "s_strategy")
public class Strategy {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "strategyId", length = 10)
	private Integer strategyId;

	@Column(name = "title", length = 50)
	private String title; // 标题

	@Column(name = "desribe")
	private String desribe;// 内容

	@Column(name = "time", length = 50)
	private Date time; // 发布时间

	@Column(name = "pict")
	private String pict;// 攻略图片

	@Column(name = "name")
	private String name;// 名字

	public Strategy() {
		super();
	}

	public Strategy(Integer strategyId, String title, String desribe, Date time, String pict, String name) {
		super();
		this.strategyId = strategyId;
		this.title = title;
		this.desribe = desribe;
		this.time = time;
		this.pict = pict;
		this.name = name;
	}

	public Integer getStrategyId() {
		return strategyId;
	}

	public void setStrategyId(Integer strategyId) {
		this.strategyId = strategyId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDesribe() {
		return desribe;
	}

	public void setDesribe(String desribe) {
		this.desribe = desribe;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getPict() {
		return pict;
	}

	public void setPict(String pict) {
		this.pict = pict;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Strategy [strategyId=" + strategyId + ", title=" + title + ", desribe=" + desribe + ", time=" + time
				+ ", pict=" + pict + ", name=" + name + "]";
	}

}
