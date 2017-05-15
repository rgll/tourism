package com.hsxy.tourism.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hsxy.tourism.bean.Users;
import com.hsxy.tourism.service.LoginService;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	private LoginService loginService;

	/**
	 * 
	 * sendYzm:进入主页面. <br/>
	 * 
	 * @author Administrator
	 * @param userName
	 * @return
	 * @throws Exception
	 * @since JDK 1.8
	 */
	@RequestMapping("/info")
	public String info(String userName, String password) {
		Users user = loginService.selectUser(userName, password);
		if (user != null && !user.equals("")) {
			return "front/info";
		} else {
			return "front/login";
		}
	}

	@RequestMapping("/inter")
	public String inter(String userName, String password, HttpServletRequest request) {
		Users user = loginService.selectUser(userName, password);
		if (user != null && !user.equals("")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return "front/index";
		} else {
			return "front/login";
		}
	}

	@RequestMapping("/add")
	public String add(String userName, String password, String name, String phone, int sex, String address,
			HttpServletRequest request) {
		loginService.add(userName, name, phone, sex, address);
		Users user = loginService.selectUser(userName, password);
		if (user != null && !user.equals("")) {
			request.getSession().setAttribute("user", user);
			return "front/index";
		} else {
			return "front/login";
		}
	}

}