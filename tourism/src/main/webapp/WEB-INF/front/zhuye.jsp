<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath(); %>
<%
	String name = request.getParameter("userName");
	String pwd = request.getParameter("password");
	Object user=request.getSession().getAttribute("user"); //获取你的对象里面涵盖的内容
%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link href="${ctxPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctxPath}/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${ctxPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link rel="stylesheet" href="${ctxPath}/css/chocolat.css" type="text/css">

<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---->
<script src="${ctxPath}/js/bootstrap.min.js"></script>
<!---->
<link href='http://fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<script src="${ctxPath}/js/jquery.chocolat.js"></script>
		<!--lightboxfiles-->
		<script type="text/javascript">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
<!--script-->
<!--startsmothscrolling-->
<script type="text/javascript" src="${ctxPath}/js/move-top.js"></script>
<script type="text/javascript" src="${ctxPath}/js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>

<script src="${ctxPath}/js/modernizr.custom.97074.js"></script>
</head>
<body>
	<!-- <div class="container" > -->
		<div class="navbar-collapse">
			<nav class="navbar navbar-default " role="navigation" style="top: -10px;" > 
				<div class="container-fluid col-xs-12" >
				    <div class="navbar-header"> 
			        	<!-- <h4>Welcome To Hebei</h4> -->
			        	<img alt="" src="${ctxPath}/images/002.jpg" style="height: 35px;width: 140px;">
			    	</div>  
			        <ul class="nav navbar-nav navbar-right"> 
			        	<%-- <%
			        		if(${sessionScope.user.name} == null){
			        	%>
			        			 <li><a href="${ctxPath}/register" style="color: black; font-size: 2ex;">注册</a></li> 
			          			 <li><a href="${ctxPath}/login" style="color: black; font-size: 2ex;"> 登录</a></li>
			        	<% }else{%>
			        	
			        		<li><a href="${ctxPath}/register" style="color: black; font-size: 2ex;">${sessionScope.user.name}</a></li>
			        	<%}%> --%>
			       	<c:choose>
						<c:when test="${sessionScope.user == null}">
							<li><a href="${ctxPath}/register" style="color: black; font-size: 2ex;">注册</a></li> 
			         		<li><a href="${ctxPath}/login" style="color: black; font-size: 2ex;"> 登录</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${ctxPath}/register" style="color: black; font-size: 2ex;">${sessionScope.user.name}</a></li>
						</c:otherwise>
					</c:choose>
			        	
			          <%--   <li><a href="${ctxPath}/register" style="color: black; font-size: 2ex;">注册</a></li> 
			            <li><a href="${ctxPath}/login" style="color: black; font-size: 2ex;"> 登录</a></li>
			            ${sessionScope.user.name}<!-- if --> --%>
			        </ul> 
				</div> 
			</nav>
		</div>
			<!-- </div> -->
			<!-- 
			<div class="banner-grids">
				<div class="col-md-2 banner-grid">
					<select class="sel">
						<option value="">Location</option>
						<option value="">Czech Republic</option>
						<option value="">France</option>
						<option value="">germany</option>
						<option value="">Italy</option>
					</select>							
				</div>
				<div class="col-md-2 banner-grid">
					<select class="sel">
						<option value="">Hotel</option>
						<option value="">Hilton</option>
						<option value="">Orange county</option>
						<option value="">Sheraton</option>
					</select>								
				</div>
				<div class="col-md-2 banner-grid">
					<select class="sel">
						<option value="">Type</option>
						<option value="">Group</option>
						<option value="">Trip</option>
					</select>									
				</div>
				<div class="col-md-2 banner-grid">
					<select class="sel">
						<option value="">Select price</option>
						<option value="">$100 </option>
						<option value="">$500</option>
						<option value="">$700</option>
						<option value="">$4500</option>
					</select>									
				</div>
				<div class="col-md-4 search">
					<form action="#" method="post">
						<input type="submit" value="Check Availability">
					</form>
				</div>
				<div class="clearfix"></div>
			</div> -->
	<!-- </div> -->
	<div style="position: relative; top: -10px;" >
		<video width="100%" src="http://ccm.ddcdn.com/cms/site/branding/videos/tahiti/video.mp4" autoplay="autoplay" loop="loop">
		</video>
	</div>
    <div class="header" style="position: relative;top: -15px;">
		<div class="container">
			<nav class="navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<!-- <div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					  <div class="navbar-brand logo">
							<a><img alt="" src="${ctxPath}/images/001.jpg" height="80px" width="200px" /></a>							
					  </div>
					</div> -->
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					  <ul class="nav navbar-nav cl-effect-11">
						<li class="active"><a href="#" onclick="javascript:window.location.href='${ctxPath}/index'" data-hover="主" class="scroll">主页 </a></li>
						<li><a href="#services"  data-hover="目" class="scroll">目的地</a></li>
						<li><a href="#tours" data-hover="景" class="scroll">景点</a></li>
						<li><a href="#guides" data-hover="游" class="scroll">游记</a></li>
						<li><a href="#foods" data-hover="美" class="scroll">美食</a></li>
<!-- 						<li hidden="true"><a data-hover="个" hidden="true"  onclick="info()" class="scroll">个人信息</a></li>
 -->					  </ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
			<div class="clearfix"></div>
		</div>	
	</div> 
</body>
<script type="text/javascript">
</script>
</html>
