package com.hsxy.tourism.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.hsxy.tourism.bean.Users;

@Transactional
public interface UserDao extends JpaRepository<Users, Integer> {

	Users findByName(String userName);

	Users findByUserNameAndPassword(String userName, String password);

	@Modifying(clearAutomatically = true)
	@Query("update Users u set " + "u.name=?2,u.phone=?3,u.sex=?4,u.address=?5" + " where u.userName=?1")
	void add(String userName, String name, String phone, int sex, String address);
}
