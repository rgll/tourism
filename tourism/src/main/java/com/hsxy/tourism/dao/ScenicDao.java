package com.hsxy.tourism.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSONObject;
import com.hsxy.tourism.bean.Scenery;

@Transactional
public interface ScenicDao extends JpaRepository<Scenery, Integer> {

	public JSONObject findByName(String name);
}
