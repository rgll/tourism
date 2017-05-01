package com.hsxy.tourism.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.hsxy.tourism.bean.SysUser;

@Transactional
public interface UserDao extends JpaRepository<SysUser, Integer> {

	public SysUser findByName(String userName);
}
