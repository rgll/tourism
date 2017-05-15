<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>门票预定</title>
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
    width: 30%;
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

</div>
	<div id="box2">
		<div style="width: 80%; height: 50px;">
			<b>学生票${data.name}</b>
			<p id="a" style="height:0px;width:800px;overflow-y:hidden;">使用方法： 	凭确认短信取票入园 取票时间：9:30~15:00   <br />取票地点：景区取票处<br /> 补充说明：取票时间：当天15:00以后，否则无法取票。<br />
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预订生效后，如您在出游前二天12：00以后提出退订或更改，费用全损，敬请谅解。
				<br />退改规则： 	该产品一经预订成功，不支持退改，敬请谅解。</p>
			<a href="javascript:void(0)" id="show" style="display:block" onclick="document.getElementById('a').style.height='150px';document.getElementById('hidden').style.display='block';document.getElementById('show').style.display='none';">预定须知</a>
			<a href="javascript:void(0)" id="hidden" style="display:none;" onclick="document.getElementById('a').style.height='0px';document.getElementById('hidden').style.display='none';document.getElementById('show').style.display='block';">收起</a>
		</div>
		<br />
		<br />
		<br /><br /><br /><br /><br /><br />
		<div style="background-color: #FFFFFF; width: 100%; height: 130px;">
			<br />
			购买张数：&nbsp;&nbsp;&nbsp;
			<a class="from-inline" data-box="buy">
 				<button type="button">-</button>
					<input style="width: 100px" type="text" id="BuyNum_1" min="1" max="10" step="1" patten="[0-9]*" value="1" name="BuyNum" />
					<button type="button">+</button>
			</a>
			<br />
			<br />
			<a>出行人：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			<input id="name" name="username" value="" placeholder="姓名" class="ur" width="100px" style="width: 200px;height: 30px;"/>&nbsp;&nbsp;&nbsp;
	        <input id="pwd" name="password" placeholder="手机号" value="${sessionScope.user.phone}" maxlength="11" class="pw" width="100px" style="width: 200px;height: 30px;"/>
		</div>
		<br />
		<div class="bot10" >
			<a>订单总额：&nbsp;&nbsp;&nbsp;&nbsp;</a>
			&yen<a id="yy">0.0</a>
			<p onclick="order(this)">提交订单</p>
		</div>
	</div>
	
</body>
<script type="text/javascript">
/*点击预定  */
function order(or){
	window.location.href = "${ctxPath}/order/pay";
}

    function getElementByAttr(tag, attr, value) {
         var aElements = document.getElementsByTagName(tag);
         var aEle = [];
         for (var i = 0; i < aElements.length; i++) {
             if (aElements[i].getAttribute(attr) == value)
                 aEle.push(aElements[i]);
         }
         return aEle;
     }
     window.onload = function () {
         var box = getElementByAttr("a", "data-box", "buy");
         for (var i = 0; i < box.length; i++) {
             calculate(box[i]);

         }
     }
	function calculate(box) {
        var oBtn = box.getElementsByTagName("button");
        var ipt = box.getElementsByTagName("input")[0];
        var number = parseInt(ipt.value);
		var yuan = document.getElementById("yy");
		var money = 60;
        oBtn[0].onclick = function () {
        	number--;
            if (number < 0) {
                number = 0;
            }
            ipt.value = number;
			yuan.innerHTML = number * money / 2;
        }
        oBtn[1].onclick = function () {
            number++;
            ipt.value = number;
            yuan.innerHTML = number * money / 2;
        }
     }
 </script>
</html>