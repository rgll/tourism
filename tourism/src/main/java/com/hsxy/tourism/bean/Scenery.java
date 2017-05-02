package com.hsxy.tourism.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "scenery")
public class Scenery {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sceneryId", length = 10)
	private String sceneryId;

	@Column(name = "local", length = 50)
	private String local; // 所属地区

	@Column(name = "name", length = 50)
	private String name;// 景点名称

	@Column(name = "describ")
	private String describ;// 景点描述

	@Column(name = "roleId", length = 50)
	private String roleId; // 角色ID

	@Column(name = "picture", length = 50)
	private String picture;// 景点图片

	@Column(name = "tacketId")
	private String tacketId;// 门票id

	@Column(name = "tacketMoney", length = 10)
	private int tacketMoney; // 门票单价

	public Scenery() {
		super();
	}

	public Scenery(String sceneryId, String local, String name, String describ, String roleId, String picture,
			String tacketId, int tacketMoney) {
		super();
		this.sceneryId = sceneryId;
		this.local = local;
		this.name = name;
		this.describ = describ;
		this.roleId = roleId;
		this.picture = picture;
		this.tacketId = tacketId;
		this.tacketMoney = tacketMoney;
	}

	public String getsceneryId() {
		return sceneryId;
	}

	public void setsceneryId(String sceneryId) {
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

	public String getdescrib() {
		return describ;
	}

	public void setdescrib(String describ) {
		this.describ = describ;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String gettacketId() {
		return tacketId;
	}

	public void settacketId(String tacketId) {
		this.tacketId = tacketId;
	}

	public int gettacketMoney() {
		return tacketMoney;
	}

	public void settacketMoney(int tacketMoney) {
		this.tacketMoney = tacketMoney;
	}

	@Override
	public String toString() {
		return "Scenery [sceneryId=" + sceneryId + ", local=" + local + ", name=" + name + ", describ=" + describ
				+ ", roleId=" + roleId + ", picture=" + picture + ", tacketId=" + tacketId + ", tacketMoney="
				+ tacketMoney + "]";
	}

}
