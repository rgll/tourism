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
	@Column(name = "scenery_id", length = 10)
	private String scenery_id;

	@Column(name = "local", length = 50)
	private String local; // 所属地区

	@Column(name = "name", length = 50)
	private String name;// 景点名称

	@Column(name = "describe")
	private String describe;// 景点描述

	@Column(name = "roleId", length = 50)
	private String roleId; // 角色ID

	@Column(name = "picture", length = 50)
	private String picture;// 景点图片

	@Column(name = "tacket_id")
	private String tacket_id;// 门票id

	@Column(name = "tacket_money", length = 10)
	private int tacket_money; // 门票单价

	public Scenery() {
		super();
	}

	public Scenery(String scenery_id, String local, String name, String describe, String roleId, String picture,
			String tacket_id, int tacket_money) {
		super();
		this.scenery_id = scenery_id;
		this.local = local;
		this.name = name;
		this.describe = describe;
		this.roleId = roleId;
		this.picture = picture;
		this.tacket_id = tacket_id;
		this.tacket_money = tacket_money;
	}

	public String getScenery_id() {
		return scenery_id;
	}

	public void setScenery_id(String scenery_id) {
		this.scenery_id = scenery_id;
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

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
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

	public String getTacket_id() {
		return tacket_id;
	}

	public void setTacket_id(String tacket_id) {
		this.tacket_id = tacket_id;
	}

	public int getTacket_money() {
		return tacket_money;
	}

	public void setTacket_money(int tacket_money) {
		this.tacket_money = tacket_money;
	}

	@Override
	public String toString() {
		return "Scenery [scenery_id=" + scenery_id + ", local=" + local + ", name=" + name + ", describe=" + describe
				+ ", roleId=" + roleId + ", picture=" + picture + ", tacket_id=" + tacket_id + ", tacket_money="
				+ tacket_money + "]";
	}

}
