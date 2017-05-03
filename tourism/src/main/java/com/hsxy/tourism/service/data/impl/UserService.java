package com.hsxy.tourism.service.data.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.hsxy.tourism.bean.Users;
import com.hsxy.tourism.dao.UserDao;
import com.hsxy.tourism.service.data.IUserService;

@Service
@Transactional
public class UserService implements IUserService {
	@Resource
	UserDao userDao;

	@Override
	public Users findByName(String userName) {
		return userDao.findByName(userName);
	}

}
