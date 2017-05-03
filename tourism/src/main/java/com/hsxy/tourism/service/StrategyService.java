package com.hsxy.tourism.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hsxy.tourism.bean.Strategy;
import com.hsxy.tourism.dao.StrategyDao;

@Service
public class StrategyService {
	@Autowired
	private StrategyDao strategyDao;

	public List<Strategy> select(String name) {
		String name2 = "%" + name + "%";
		return strategyDao.findByDesribeLike(name2);
	}

}
