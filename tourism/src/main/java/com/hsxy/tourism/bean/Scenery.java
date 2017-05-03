package com.hsxy.tourism.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * ClassName: Scenery景点表 <br/>
 * date: 2017年4月3日 上午11:42:30 <br/>
 * 
 * @author Administrator
 * @version
 * @since JDK 1.8
 */
@Entity
@Table(name = "s_scenery")
public class Scenery {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sceneryId", length = 10)
	private Integer sceneryId;

	@Column(name = "local", length = 50)
	private String local; // 所属地区

	@Column(name = "name", length = 50)
	private String name;// 景点名称

	@Column(name = "describ")
	private String describ;// 景点描述

	@Column(name = "picture", length = 50)
	private String picture;// 景点图片

	@Column(name = "tacketId")
	private int tacketId;// 门票id

	@Column(name = "tacketMoney", length = 10)
	private int tacketMoney; // 门票单价

	public Scenery() {
		super();
	}

	public Scenery(Integer sceneryId, String local, String name, String describ, String picture, int tacketId,
			int tacketMoney) {
		super();
		this.sceneryId = sceneryId;
		this.local = local;
		this.name = name;
		this.describ = describ;
		this.picture = picture;
		this.tacketId = tacketId;
		this.tacketMoney = tacketMoney;
	}

	public Integer getSceneryId() {
		return sceneryId;
	}

	public void setSceneryId(Integer sceneryId) {
		this.sceneryId = sceneryId;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescrib() {
		return describ;
	}

	public void setDescrib(String describ) {
		this.describ = describ;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getTacketId() {
		return tacketId;
	}

	public void setTacketId(int tacketId) {
		this.tacketId = tacketId;
	}

	public int getTacketMoney() {
		return tacketMoney;
	}

	public void setTacketMoney(int tacketMoney) {
		this.tacketMoney = tacketMoney;
	}

	@Override
	public String toString() {
		return "Scenery [sceneryId=" + sceneryId + ", local=" + local + ", name=" + name + ", describ=" + describ
				+ ", picture=" + picture + ", tacketId=" + tacketId + ", tacketMoney=" + tacketMoney + "]";
	}

}
