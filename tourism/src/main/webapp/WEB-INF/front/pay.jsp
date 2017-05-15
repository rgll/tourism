<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>门票支付</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="${ctxPath}/css/a.css">
	<script src="${ctxPath}/js/jquery.min.js"></script>
<style type="text/css">
	#progressBar{
    width: 60%;
    height: 50px;
    position: relative;
    margin: 50px 0 0 200px;
}
#progressBar div{
    width: 100%;
    height: 5px;
    position: absolute;
    top:40%;
    left: 0;
    margin-top:-20px;
    border:1px solid #ddd;
    background: #ccc;
}
#progressBar div span{
    position: absolute;
    display: inline-block;
    background: #00e39b;
    height: 5px;
    width: 55%;
}
#progressBar>span{
    position: absolute;
    top:0;
    margin-top: -10px;
    width: 20px;
    height: 20px;
    border:2px solid #ddd;
    border-radius: 50%;
    background: #00e39b;
    margin-left: 20px;
    color:#fff;
}
#progressBar>span:nth-child(1){
    left: 0%;
}
#progressBar>span:nth-child(2){
    left: 25%;
    background:#00e39b;
}
#progressBar>span:nth-child(3){
    left: 50%;
    background:#ccc;
}
#progressBar>span:nth-child(4){
    left: 75%;
    background:#ccc;
}
#progressBar>span:nth-child(5){
    left: 100%;
    background:#ccc;
}
</style>
</head>
<body>
<div id="progressBar">
     <!-- 进度条 -->
     <div>
         <span></span>
     </div>
     <!-- 五个圆 -->
     <span></span>
     <span></span>
     <span></span>
</div>
	<a style="position: relative; top: -20px; left: 30%;">填写订单</a>
	<a style="position: relative; top: -20px; left: 41%;">支付</a>
	<a style="position: relative; top: -20px; left: 53%;">完成</a>
<div>
<br />
</div>
<h2 align="center">请扫描图中二维码</h2>
<br />
<img style="width: 300px; height: 350px;position: relative;left: 40%;" alt="" src="${ctxPath}/images/pay.jpg">
<br />
<br />
<button style="position: relative;left: 47%; color: graytext;" onclick="order()">支付成功</button>

</div>
	
</body>
<script type="text/javascript">
/*支付成功  */
function order(){
	window.location.href = "${ctxPath}/index";
}
 </script>
</html>