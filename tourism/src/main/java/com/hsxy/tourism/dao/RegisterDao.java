package com.hsxy.tourism.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.hsxy.tourism.bean.Users;

@Transactional
public interface RegisterDao extends JpaRepository<Users, Integer> {

	Users findByUserName(String userName);
}
