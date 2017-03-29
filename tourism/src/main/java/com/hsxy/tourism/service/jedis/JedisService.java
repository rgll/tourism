package com.hsxy.tourism.service.jedis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.stereotype.Service;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

@Service
public class JedisService {

	private JedisPool pool;

	@Autowired
	private RedisProperties redisProperties;

	public Jedis getconnection() {
		this.getPool();
		return pool.getResource();
	}

	/**
	 * 构建redis连接池
	 * 
	 * @param ip
	 * @param port
	 * @return JedisPool
	 */
	public JedisPool getPool() {
		if (pool == null) {
			JedisPoolConfig config = new JedisPoolConfig();
			/** 下面这些配置都是默认的,可以不写 */
			// 在获取连接的时候检查有效性, 默认false
			config.setTestOnBorrow(true);
			// 在空闲时检查有效性, 默认false
			config.setTestWhileIdle(true);
			/*
			 * // 最大连接数, 默认8个
			 * config.setMaxTotal(redisProperties.getPool().getMaxActive()); //
			 * 最大空闲连接数, 默认8个
			 * config.setMaxIdle(redisProperties.getPool().getMaxIdle()); //
			 * 最小空闲连接数, 默认0
			 * config.setMinIdle(redisProperties.getPool().getMinIdle()); //
			 * 获取连接时的最大等待毫秒数(如果设置为阻塞时BlockWhenExhausted),如果超时就抛异常, 小于零:阻塞不确定的时间,
			 * // 默认-1
			 * config.setMaxWaitMillis(redisProperties.getPool().getMaxWait());
			 */
			// 对象空闲多久后逐出, 当空闲时间>该值 且 空闲连接>最大空闲数时直接逐出,
			// 不再根据MinEvictableIdleTimeMillis判断 (默认逐出策略)
			config.setMinEvictableIdleTimeMillis(60000);
			// 逐出扫描的时间间隔(毫秒) 如果为负数,则不运行逐出线程, 默认-1
			config.setTimeBetweenEvictionRunsMillis(30000);
			// 每次逐出检查时 逐出的最大数目 如果为负数就是 : 1/abs(n), 默认3
			config.setNumTestsPerEvictionRun(-1);
			pool = new JedisPool(config, redisProperties.getHost(), redisProperties.getPort());
		}
		return pool;
	}

	/**
	 * 获取Redis客户端连接，使用后需调用{@link # destory(Jedis)}销毁
	 * 
	 * @return
	 */

	public void destory(Jedis jedis) {
		if (jedis != null) {
			jedis.close();
			jedis = null;
		}
		if (pool != null) {
			this.pool.close();
			this.pool = null;
		}
	}

}
