<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath(); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${ctxPath}/js/jquery.min.js"></script>
<title>旅游网站用户注册</title><base target="_blank" />
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
.lg_top{ height:170px; width:468px;}
.lg_main{width:400px; height:210px; margin:0 25px;}
.lg_m_1{
	width:290px;
	height:100px;
	padding:60px 55px 20px 55px;
}
.bn{width:330px; height:72px; background:url(${ctxPath}/images/enter.png) no-repeat; border:0; display:block; font-size:18px; color:#FFF; font-family:Arial, Helvetica, sans-serif; font-weight:bolder;}
.lg_foot{
	height:80px;
	width:330px;
	padding: 6px 68px 0 68px;
}
.checkCode {
    cursor: pointer;
    border: 1px solid black;
    text-align: center;
    line-height: 26px;
    width: 115px;
    height: 35px;
}
</style>
</head>

<body class="b">
<div class="lg">
<form action="#" method="POST">
    <div class="lg_top"></div>
    <div class="lg_main">
        <div class="lg_m_1">
	        <input id="username" name="username" value="" placeholder="请输入用户名" class="ur" width="100px" style="width: 200px;height: 30px;"/>&nbsp;&nbsp;&nbsp;
	        <br />
	        <br />
	        <input id="pwd" name="password" type="password" placeholder="请输入6-16位密码" value="" class="pw" width="100px" style="width: 200px;height: 30px;"/>
	        <br />
	        <br />
	        <input id="yzm" name="yzm" type="text" value="" class="yz" style="width: 120px;height: 30px;"/>
	        <input style="position: relative; top: 0px; left: 80px;" class="checkCode" type="button" id="btn" value="免费获取验证码" onclick="butt()" />
        </div>
    </div>
    <div class="lg_foot">
	    <input type="button" value="注册" class="bn" onclick="register()" />
    </div>
</form>
</div>
</body>
<script type="text/javascript">
    var sleep = 60, interval = null;
    //验证码倒计时
  	/* window.onload = function ()
    {
	    var btn = document.getElementById('btn');
	    var name = document.getElementById('username');
	    var pwd = document.getElementById('pwd');
	    btn.onclick = function (){
			if (!interval)
            {
                this.style.backgroundColor = 'rgb(243, 182, 182)';
                this.disabled = "disabled";
                this.style.cursor = "wait";
                this.value = "重新发送 (" + sleep-- + ")";
                interval = setInterval (function ()
                {
                    if (sleep == 0)
                    {
                        if (!!interval)
                        {
                            clearInterval (interval);
                            interval = null;
                            sleep = 60;
                            btn.style.cursor = "pointer";
                            btn.removeAttribute ('disabled');
                            btn.value = "免费获取验证码";
                            btn.style.backgroundColor = '';
                        }
                        return false;
                    }
                    btn.value = "重新发送 (" + sleep-- + ")";
                }, 1000);
            }
		}
    } */
    //发送验证码
    function butt(){
    	if(checkRegname() == true && checkPwd() == true){
	    	$.ajax({
	    		url : '<%=ctxPath%>/register/sendYzm',
	    		type : 'POST',
	    		dataType : 'json',
	    		data : {
	    			userName: $("#username").val()
	    		},
	    		success : function(data, textStatus, xhr) {
	    			alert("发送成功");
	    		},
	    		error : function(xhr, textStatus, errorThrown) {
	    			alert("发送失败");
	    		}
	    	});
    	}
    }
    //用户名
    function checkRegname(){
    	if(/^\w+@\w+.[A-Za-z]{2,3}(.[A-Za-z]{2,3})?$/.test($("#username").val()) || /^1\d{10}$/.test($("#username").val()) ){
    		$.ajax({
	    		url : '<%=ctxPath%>/register/ifExist',
	    		type : 'POST',
	    		dataType : 'json',
	    		data : {
	    			userName: $("#username").val()
	    		},
	    		success : function(ret) {
	    			if(ret){
	    				alert("该账号已存在 ,请重新输入");
	    				return false;
	    			}else{
	    				return true;
	    			}
	    		}
	    	});
    		return true;
    	}else{
    		alert("请输入手机号或邮箱");
    		return false;
    	}
    }
	//密码
    function checkPwd(){
    	if(/^[0-9a-zA-Z]{6,16}$/.test($("#pwd").val())){
    		return true;
    	}else{
    		alert("请输入6-16位密码");
	    	return false;
    	}
    }
	//注册
    function register(){
    	if($("#yzm").val() != null && $("#yzm").val() != ""){
	    	$.ajax({
	    		url : '<%=ctxPath%>/register/getYzm',
	    		type : 'POST',
	    		dataType : 'json',
	    		data : {
	    			yzm: $("#yzm").val(),
	    			userName: $("#username").val(),
	    			password: $("#pwd").val(),
	    		},
	    		success : function(ret) {
	    			if(ret){
	    				window.location.href = "${ctxPath}/login/info?userName=" + $("#username").val() + "&password=" + $("#pwd").val();
	    			}else{
	    				alert("验证码不正确 ,请重新输入");
	    			}
	    		},
	    	});
    	}
    }

</script>
</html>