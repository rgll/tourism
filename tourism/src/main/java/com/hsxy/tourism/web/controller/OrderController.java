package com.hsxy.tourism.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hsxy.tourism.service.ScenicService;

@Controller
@RequestMapping("order")
public class OrderController {

	@Autowired
	ScenicService scenicService;

	/**
	 * 
	 * interScenic: 进入订票页面. <br/>
	 * 
	 * @author Administrator
	 * @param name
	 * @param model
	 * @return
	 * @since JDK 1.8
	 */
	@RequestMapping("/inter")
	public String interScenic(String name, Model model) {
		return "front/order";
	}

	/**
	 * 
	 * selectScenic:进入支付页面. <br/>
	 * 
	 * @author Administrator
	 * @param name
	 * @return
	 * @since JDK 1.8
	 */
	@RequestMapping("/pay")
	public String selectScenic(String name) {
		return "front/pay";
	}

}
