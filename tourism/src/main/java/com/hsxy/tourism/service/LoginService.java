package com.hsxy.tourism.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsxy.tourism.bean.Users;
import com.hsxy.tourism.dao.UserDao;

@Service
@Transactional
public class LoginService {
	@Autowired
	private UserDao userDao;

	public Users selectUser(String userName, String password) {
		return userDao.findByUserNameAndPassword(userName, password);
	}

	public void add(String userName, String name, String phone, int sex, String address) {
		userDao.add(userName, name, phone, sex, address);
	}

}
