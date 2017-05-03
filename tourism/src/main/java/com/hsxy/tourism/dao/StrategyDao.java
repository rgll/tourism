package com.hsxy.tourism.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.hsxy.tourism.bean.Strategy;

@Transactional
public interface StrategyDao extends JpaRepository<Strategy, Integer> {

	List<Strategy> findByDesribeLike(String desribe);
}
