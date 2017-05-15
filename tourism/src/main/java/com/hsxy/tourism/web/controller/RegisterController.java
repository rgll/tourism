package com.hsxy.tourism.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hsxy.tourism.service.RegisterService;

@Controller
@RequestMapping("register")
public class RegisterController {
	@Autowired
	private RegisterService registerService;

	/**
	 * 
	 * sendyzm:发送验证码. <br/>
	 *
	 * @author Administrator
	 * @param userName
	 * @throws Exception
	 * @since JDK 1.8
	 */
	@RequestMapping("/sendYzm")
	@ResponseBody
	public boolean sendYzm(String userName) throws Exception {
		registerService.sendYzm(userName);
		return true;
	}

	/**
	 * 
	 * getYzm:获取验证码. <br/>
	 *
	 * @author Administrator
	 * @since JDK 1.8
	 */
	@RequestMapping("/getYzm")
	@ResponseBody
	public boolean getYzm(String yzm, String userName, String password) {
		String yzm2 = registerService.yzm();
		if (yzm.equals(yzm2)) {
			registerService.putUser(userName, password); // 存入数据库
			return true;
		} else {
			return false;
		}
	}

	/**
	 * ifExist: 用户是否存在.. <br/>
	 *
	 * @author Administrator
	 * @param userName
	 * @return
	 * @throws Exception
	 * @since JDK 1.8
	 */
	@RequestMapping("/ifExist")
	@ResponseBody
	public boolean ifExist(String userName) throws Exception {
		boolean exist = registerService.ifExist(userName);
		return exist;
	}
}
