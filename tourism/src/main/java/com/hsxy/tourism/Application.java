package com.hsxy.tourism;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.web.bind.annotation.RestController;

/**
 * 
 * ClassName: Application <br/>
 * date: 2016年12月9日 下午4:36:52 <br/>
 * 
 * @author Administrator
 * @version
 * @since JDK 1.8
 */
@SpringBootApplication
@RestController
public class Application extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(Application.class);
	}

}