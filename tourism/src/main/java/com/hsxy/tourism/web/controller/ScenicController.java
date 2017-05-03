package com.hsxy.tourism.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hsxy.tourism.bean.Scenery;
import com.hsxy.tourism.bean.Strategy;
import com.hsxy.tourism.service.ScenicService;
import com.hsxy.tourism.service.StrategyService;

@Controller
@RequestMapping("scenic")
public class ScenicController {

	@Autowired
	ScenicService scenicService;
	@Autowired
	StrategyService strategyService;

	@RequestMapping("/inter")
	public String interScenic(String name, Model model) {
		Scenery jScenery = scenicService.select(name);
		List<Strategy> jStrategy = strategyService.select(name);
		System.out.println(jStrategy.size());
		model.addAttribute("data", jScenery);
		model.addAttribute("data2", jStrategy);
		return "front/scenic";
	}

	@RequestMapping("/ajax/select")
	@ResponseBody
	public Scenery selectScenic(String name) {
		return scenicService.select(name);
	}

}
