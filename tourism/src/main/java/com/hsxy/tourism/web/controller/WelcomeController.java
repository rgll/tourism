package com.hsxy.tourism.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	@RequestMapping("/index")
	public String welcome2() {
		return "front/index";
	}

	@RequestMapping("/register")
	public String welcome3() {
		return "front/register";
	}

	@RequestMapping("/login")
	public String welcome4() {
		return "front/login";
	}
}
