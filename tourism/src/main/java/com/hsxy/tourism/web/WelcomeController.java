package com.hsxy.tourism.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

@Controller
public class WelcomeController {

	@RequestMapping("/json")
	@ResponseBody
	public JSONObject welcome1() {
		System.err.println("sss");
		String asd = "{ 'employees' : [" + "{ 'firstName':'Bill' , 'lastName':'Gates' },"
				+ "{'firstName':'Thomas','lastName':'Carter'}]}";
		JSONObject json = JSONObject.parseObject(asd);
		return json;
	}

	@RequestMapping("/inter")
	public String welcome2() {
		return "front/index";
	}

	@RequestMapping("/inter2")
	public String welcome3() {
		return "back/login";
	}

	@RequestMapping("/back/main")
	public String welcome4() {
		return "back/main";
	}
}
