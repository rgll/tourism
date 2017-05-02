package com.hsxy.tourism.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.hsxy.tourism.service.ScenicService;

@Controller
@RequestMapping("/scenic")
public class ScenicController {

	@Autowired
	ScenicService scenicService;

	@RequestMapping("/ajax/select")
	@ResponseBody
	public JSONObject selectScenic(String name) {
		JSONObject json = scenicService.select(name);

		return json;
	}

}
