package com.hsxy.tourism.service.data;

import com.hsxy.tourism.bean.SysUser;

public interface IUserService {

	public SysUser findByName(String userName);
}
