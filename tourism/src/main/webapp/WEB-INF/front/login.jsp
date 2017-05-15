<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath(); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${ctxPath}/js/jquery.min.js"></script>
<title>旅游网站用户登录</title><base target="_blank" />
<style>
*{
	padding:0px;
	margin:0px;
	}
    a{color:White}
body{
	font-family:Arial, Helvetica, sans-serif;
	background:url(${ctxPath}/images/grass.jpg) no-repeat  center;
	font-size:13px;    
	}
img{
	border:0;
	}
.lg{width:468px; height:468px; margin:100px auto; background:url(${ctxPath}/images/login_bg.png) no-repeat;}
.lg_top{ height:200px; width:468px;}
.lg_main{width:400px; height:180px; margin:0 25px;}
.lg_m_1{
	width:290px;
	height:100px;
	padding:60px 55px 20px 55px;
}
.ur{
	height:37px;
	border:0;
	color:#666;
	width:236px;
	margin:4px 28px;
	background:url(${ctxPath}/images/user.png) no-repeat;
	padding-left:10px;
	font-size:16pt;
	font-family:Arial, Helvetica, sans-serif;
}
.pw{
	height:37px;
	border:0;
	color:#666;
	width:236px;
	margin:4px 28px;
	background:url(${ctxPath}/images/password.png) no-repeat;
	padding-left:10px;
	font-size:16pt;
	font-family:Arial, Helvetica, sans-serif;
}
.bn{width:330px; height:72px; background:url(${ctxPath}/images/enter.png) no-repeat; border:0; display:block; font-size:18px; color:#FFF; font-family:Arial, Helvetica, sans-serif; font-weight:bolder;}
.lg_foot{
	height:80px;
	width:330px;
	padding: 6px 68px 0 68px;
}
</style>
</head>

<body class="b">
<div class="lg">
<form action="#" method="POST">
    <div class="lg_top"></div>
    <div class="lg_main">
        <div class="lg_m_1">
        <input id="username" name="username" value="" class="ur" />
        <input id="pwd" name="password" type="password" value="" class="pw" />
        
        </div>
    </div>
    <div class="lg_foot">
	    <input type="button" value="点这里登录" class="bn" onclick="login()"/>
    </div>
</form>
</div>
</body>
<script type="text/javascript">
	function login() {
		if($("#username").val() != "" && $("#password").val() != ""){
			window.location.href = "${ctxPath}/login/inter?userName=" + $("#username").val() + "&password=" + $("#pwd").val();
		}
	}
</script>
</html>