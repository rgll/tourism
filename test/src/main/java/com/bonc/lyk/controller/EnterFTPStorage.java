package com.bonc.lyk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ftp")
public class EnterFTPStorage {
	/*
	 * 进入ftp存储页面
	 */
	@RequestMapping("/inter")
	public String inter (){
		return "ftpStorage";
	}
}
