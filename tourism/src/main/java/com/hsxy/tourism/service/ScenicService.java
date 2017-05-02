package com.hsxy.tourism.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsxy.tourism.bean.Scenery;
import com.hsxy.tourism.dao.ScenicDao;

@Service
public class ScenicService {

	@Autowired
	private ScenicDao scenicDao;

	public Scenery select(String name) {

		return scenicDao.findByName(name);
	}

}
