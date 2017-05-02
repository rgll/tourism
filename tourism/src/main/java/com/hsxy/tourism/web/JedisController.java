package com.hsxy.tourism.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hsxy.tourism.service.jedis.JedisService;

import redis.clients.jedis.Jedis;

@Controller
public class JedisController {

	@Autowired
	private JedisService jedisService;

	@RequestMapping("/a")
	public void Test() {
		Jedis jedis = jedisService.getconnection();
		jedis.setex("key", 60 * 5, "value");
		String key = jedis.get("key");
		System.err.println(key);
		jedisService.destory(jedis);
	}

}
