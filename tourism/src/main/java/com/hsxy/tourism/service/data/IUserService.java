package com.hsxy.tourism.service.data;

import com.hsxy.tourism.bean.Users;

public interface IUserService {

	public Users findByName(String userName);
}
