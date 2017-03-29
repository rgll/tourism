# Machine Data Analysis（MDA）
机器数据（Machine Data）：是IT系统自己产生的数据，包括客户端、服务器、网络设备、安全设备、应用程序、传感器产生的日志，及 SNMP、WMI 等时间序列事件数据，这些数据都带有时间戳。
MDA旨在打造一个功能强大的机器数据分析平台，涵盖机器数据收集、索引、搜索、监控、分析、可视化、告警等功能。

## 启动服务
 根据不同环境加载不同配置文件，配置文件格式为application-{profile}.properties的格式，其中{profile}对应你的环境标识
application-dev.properties：开发环境
application-test.properties：测试环境
application-prod.properties：生产环境
```
java -jar xxx.jar --spring.profiles.active={profile}
```

## 目录结构
```
com
 +- example
     +- myproject
         +- Application.java
         |
         +- domain
         |   +- Customer.java
         |   +- CustomerRepository.java
         |
         +- service
         |   +- CustomerService.java
         |
         +- web
             +- CustomerController.java
```

## 打包
```
mvn clean package -P dev -Dmaven.test.skip=true
mvn clean package -P product -Dmaven.test.skip=true
```
