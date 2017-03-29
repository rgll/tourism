<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath(); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Uimaker CMS 网站内容管理系统</title>
<link rel="stylesheet" type="text/css" href="${ctxPath}/backtool/css/admin_style.css" />
<link rel="stylesheet" type="text/css" href="${ctxPath}/backtool/css/skins/tpphp.css" />
<script src="${ctxPath}/backtool/js/jquery-1.4.4.min.js"></script>
<script src="${ctxPath}/backtool/js/main.js"></script>
<script src="${ctxPath}/backtool/js/artDialog.js"></script>
<script>
function openMsgWindow() {
	art.dialog({
		id:'msgDialog',
		title: '提示信息',
		lock:false,
		fixed:true,
		width:300,
		height:100,
		ok: function(){
			this.title('成功提示！').content('操作成功！').time(2);
			return false;
		 },
		 cancel: function(){
			
			return true;
		 },
		content: "<div style='line-height:25px'>您有新的站内信<Br><a href=\"http://www.uimaker.com\">点此阅读</a></div>"
	});
}
</script>
</head>
<body style="overflow:hidden;">
<div class="top">
	<div class="top_about">	
		<a href="#" class="help1" id="btn2" onclick="openMsgWindow()">使用帮助</a>
		<a href="#" class="help2">关于</a>
	</div>
	<div class="admin_logo">
		<img src="${ctxPath}/backtool/images/admin_logo.jpg">
	</div>
	<div class="top_nav">
			<ul>
				<li><a href="#" >后台首页</a></li>
				<li><a href="#" class="selected" >网站首页管理</a></li>
				<li><a href="#">菜单设置</a></li>
				<li><a href="#">文章管理</a></li>
				<li><a href="#">采集设置</a></li>
				<li><a href="#">广告管理</a></li>
				<li><a href="#">数据管理</a></li>
				<li><a href="#">用户管理</a></li>
				<li><a href="#">系统设置</a></li>
			</ul>
	</div>
	<div class="top_member">
	欢迎您，Admin | <a href="#">帐号管理</a> | <a href="#">充值</a> | <a href="#">编辑</a> | <a href="#">2条信息</a>
	</div>
</div>
<div class="side_switch" id="side_switch">
</div>
<div class="side_switchl" id="side_switchl">
</div>
<div class="left">
	<div class="member_info"><div class="member_ico"><img src="${ctxPath}/backtool/images/a.png" width="43" height="43"></div><a class="system_a" href="">系统设置</a><a href="" class="system_log">注销</a><a href="" class="system_logout">退出</a></div>
	<div class="left_title">常用功能操作</div>
	<ul class="side">
		<li><a href="#">网站栏目管理</a></li>
		<li><a href="#" class="selected">档案列表</a></li>
		<li><a href="#">等待审核的文档(23)</a></li>
		<li><a href="#">我发布的文档</a></li>
		<li><a href="#">评论管理</a></li>
		<li><a href="#">内容回收站</a></li>
	</ul>
	<ul class="side catsub">
				<li class="feed"><a href="http://www.uimaker.com">网站订阅查看</a></li>
				<li class="side_about"><a href="#">版权声明</a></li>
	</ul>
</div>
<div class="right">
<%-- <%@include file="${ctxPath}/back/default.jsp"%>  --%>
<jsp:include page="default.jsp" flush="true"/><!--动态包含-->
<%-- <IFRAME style="OVERFLOW: visible" id="main" name="main" src="${ctxPath}/back/default.jsp" frameBorder=0 width="100%" scrolling="yes" height="100%"></IFRAME>
<richeditor id="rid" path="${ctxPath}/WEB-INF/back/default.html" name="rname" ></richeditor> --%>
</div>
</body>
</html>
