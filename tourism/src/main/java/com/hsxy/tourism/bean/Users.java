package com.hsxy.tourism.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * ClassName: Users用户表 <br/>
 * date: 2017年4月3日 上午11:42:47 <br/>
 * 
 * @author Administrator
 * @version
 * @since JDK 1.8
 */
@Entity
@Table(name = "users")
public class Users {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "userId", length = 10)
	private Integer userId;

	@Column(name = "userName", length = 50)
	private String userName; // 用户名（手机号或邮箱）

	@Column(name = "password", length = 50)
	private String password;// 用户密码

	@Column(name = "name")
	private String name;// 名字

	@Column(name = "sex", length = 1)
	private int sex; // 性别（1男2女）

	@Column(name = "address")
	private String address;// 地址

	@Column(name = "phone")
	private int phone;// 联系电话

	@Column(name = "state", length = 1)
	private int state; // 状态（1可用2不可用）

	public Users() {
		super();
	}

	public Users(Integer userId, String userName, String password, String name, int sex, String address, int phone,
			int state) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
		this.state = state;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Users [userId=" + userId + ", userName=" + userName + ", password=" + password + ", name=" + name
				+ ", sex=" + sex + ", address=" + address + ", phone=" + phone + ", state=" + state + "]";
	}

}
