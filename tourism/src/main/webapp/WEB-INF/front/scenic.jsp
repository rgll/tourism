<%@page import="com.alibaba.fastjson.JSONArray"%>
<%@page import="com.hsxy.tourism.bean.Scenery"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>景点</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="${ctxPath}/css/a.css">
</head>
<body>
	<div id="box">
		<header>
			<p>${data.name}</p>
			<p>${data.name}</p>
		</header>
		<div class="mid-left">
			<img src="${ctxPath}/images/timg.jpg" alt="">
		</div>
		<div class="mid-right">
			<p>关于赵州桥</p>
			<p>赵州桥又称安济桥，坐落在河北省赵县的洨河上，横跨在37米多宽的河面上，因桥体全部用石料建成，当地称做“大石桥”。建于隋朝年间公元595年－605年，由著名匠师李春设计建造，距今已有1400多年的历史，是当今世界上现存第二早（还有一座小商桥）、保存最完整的古代单孔敞肩石拱桥。赵州桥凝聚了古代劳动人民的智慧与结晶，开创了中国桥梁建造的崭新局面。[1]  约1397年（也有些资料为大约700年）后，欧洲才建成类似的石拱桥。</p>
			<a href="">[详细信息]</a>
		</div>
		<div class="bot">特价门票</div>
		<div class="bot1">
				<p>赵州桥成人票</p>
				<p>当天15点前可预订/可退票</p>
				<p>&yen59</p>
				<p>预订</p>
		</div>
		<div class="bot1">
				<p>赵州桥儿童票</p>
				<p>当天15点前可预订/可退票</p>
				<p>&yen24</p>
				<p>预订</p>
		</div>
		<div class="bot1">
				<p>赵州桥学生票</p>
				<p>当天15点前可预订/可退票</p>
				<p>&yen30</p>
				<p>预订</p>
		</div>
		<div class="fot">点评</div>
		<div class="fot1">
			<p>小明：</p>
			<p>我是先去的柏霖禅寺，然后想坐2路公交直接再去赵州桥，好不容易在车站等到车，可是车连理我都不理直接就开走了，害得我地踮的走到赵州桥。赵州桥怎么说呢，总之就是【大老远跑到赵县去公园里看座桥】。赵州桥门票要40元，感觉太贵了，10元的话还差不多（个人感觉真心有点蛋疼）。看了半天赵州桥的地，最后也没看出个子丑寅卯！里面还有非拉着你让你照张相，把照片印在水杯上的商人，烦死了，不过我还是做了一个！要25元，砍砍价，15元搞定！赵州桥公园里还有个貌似是叫【铁索桥】的桥（具体名字我忘了），走在桥上，桥来回晃荡，过桥还真得有些胆量才行！</p>
		</div>
		<div class="fot1">
			<p>小李：</p>
			<p>臭脚来评：出了赵州桥，门口很少有出租车经过，拦不到车了，于是找了一个面包车的师傅，谈好价钱，一个人3元，把我们拉到从赵县到石家庄南焦客运站的中巴始发站，本来说把我们拉到上午下车的地方就可以了，师傅说了，在那边上车就没有位置坐了，最后我们还是同意去始发站坐车返程。（详见另一个详细版）
</p>
		</div>
		<div class="footer">游记</div>
		<div class="footer1">
			<div class="fo-left"><img src="${ctxPath}/images/thumbnails.jpg" alt=""></div>
			<div class="fo-right">
				<p>围着河北游河北</p>
				<p>行程：上海 - 河北 坝上 安阳 日期：2016年10月天数：14天预算：3000-5000(元)</p>
				<p>...赵州桥 gt石家庄 宿石家庄10月5日石家庄：河北博物院gt正定：隆兴寺gt临济寺 gt蓟县 宿蓟县10月6日蓟县：独乐寺gt白塔寺 gt北京：奥林匹克公园gt恭王府 gt...</p>
			</div>
		</div>
		<div class="footer1">
			<div class="fo-left"><img src="${ctxPath}/images/thumbnails1.jpg" alt=""></div>
			<div class="fo-right">
				<p>lily&soon在路上之 2011暑假游：天津-太原-平...</p>
				<p>行程：东营 - 天津 太原 平遥 石家庄 日期：2011年08月天数：8天预算：4262元</p>
				<p>...赵州桥。石家庄到赵县距离40多公里，同样走国道就OK。门票35元一个人。逛完才知道，里面什么都是重新返修的，或者说基本没有多少古迹了，不过好歹圆了小时...
</p>
			</div>
		</div>
		<div class="footer1">
			<div class="fo-left"><img src="${ctxPath}/images/thumbnails2.jpg" alt=""></div>
			<div class="fo-right">
				<p>【我们出发吧】早春时节，带你探访石家庄名胜...</p>
				<p>行程：郑州 - 大佛寺 赵云庙 赵州桥 柏林禅寺 西柏坡纪念馆 抱犊寨 日期：2012年03月天数：5天预算：1000-3000(元)</p>
				<p>...赵州桥、大佛寺、荣国府、西柏坡……每个名字都让人激动和向往。【Day2】探访千年古城正定县【千年古城正定县】正定是一座历史文化名城，古称常山，三国赵...</p>
			</div>
		</div>
	</div>
</body>
</html>