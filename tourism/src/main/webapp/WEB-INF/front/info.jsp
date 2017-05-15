<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>填写个人信息</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="${ctxPath}/css/a.css">
	<script src="${ctxPath}/js/jquery.min.js"></script>
</head>
<body>
<jsp:include  page="zhuye.jsp"/> <!--引入导航栏  -->
	<!--news-->
			<div class="contact"  id="contact">
				<div class="container">
					<h4 class="tittle">填写个人信息</h4>
					<div class="contact-grids">
							<div class="col-md-6 grid-contact">
								<div class="your-top">
									<i class="glyphicon glyphicon-user"> </i>
									<input type="text"  id="name" placeholder="请输入你的名称"  required >								
									<div class="clearfix"> </div>
								</div>
								<div class="your-top">
									<i class="glyphicon glyphicon-envelope"> </i>
									<input type="text" id="phone" placeholder="手机号"  required>								
									<div class="clearfix"> </div>
								</div>
								<div class="your-top">
									<i class="glyphicon glyphicon-link"> </i>
									<input type="text" id="sex" placeholder="性别(1男2女)"  required>								
									<div class="clearfix"> </div>
								</div>
								
							</div>
							<div class="col-md-6 grid-contact-in">
								<textarea id="address"  placeholder="地址"  required></textarea>
								<input type="submit" value="Send" onclick="info()">
							</div>
							<div class="clearfix"> </div>
					</div>
				</div>
			</div>
</body>
<script type="text/javascript">
/*点击预定  */
function info(){
	var userName = "${param.userName}";
	var password = "${param.password}";
	var name = $("#name").val();
	var phone = $("#phone").val();
	var sex = $("#sex").val();
	var address = $("#address").val();
	if(name != "" && phone != "" &sex != "" && address != ""){
		window.location.href = "${ctxPath}/login/add?userName="+userName+"&password="+password+"&name="+name+"&phone="+phone+"&sex="+sex+"&address="+address;;
	}
}

 </script>
</html>