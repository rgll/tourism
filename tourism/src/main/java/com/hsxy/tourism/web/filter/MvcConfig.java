package com.hsxy.tourism.web.filter;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class MvcConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/index").setViewName("front/index");
		registry.addViewController("/").setViewName("front/index");
		registry.addViewController("/main").setViewName("back/main");
		registry.addViewController("/login").setViewName("back/login");
	}

}
