package com.hsxy.tourism.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.hsxy.tourism.dao.ScenicDao;

@Service
public class ScenicService {

	@Autowired
	ScenicDao scenicDao;

	public JSONObject select(String name) {

		return scenicDao.findByName(name);
	}

}
