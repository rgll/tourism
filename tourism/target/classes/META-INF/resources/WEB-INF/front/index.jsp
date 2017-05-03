<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String ctxPath = request.getContextPath(); %>
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
			            <li><a href="${ctxPath}/login" style="color: black; font-size: 2ex;">注册</a></li> 
			            <li><a href="${ctxPath}/login" style="color: black; font-size: 2ex;"> 登录</a></li> 
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
						<li class="active"><a href="#" data-hover="主" class="scroll">主页 </a></li>
						<li><a href="#services" data-hover="目" class="scroll">目的地</a></li>
						<li><a href="#tours" data-hover="景" class="scroll">景点</a></li>
						<li><a href="#guides" data-hover="游" class="scroll">游记</a></li>
						<li><a href="#news" data-hover="美" class="scroll">美食</a></li>
						<li><a data-hover="Contact" href="#contact" class="scroll">Contact</a></li>
					  </ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
			<div class="clearfix"></div>
		</div>	
	</div> 
	<!--目的地--->
		<div class="featured-services" id="services">
			<div class="container">
				<h4 class="tittle">全部目的地</h4>
				<div style="height: 40px ">
					<ul id="myTab" class="nav navbar-nav cl-effect-11 lisize">
						<li class="active" >
							<a href="#home" data-toggle="tab">
								 石家庄
							</a>
						</li>
						<li><a href="#home1" data-toggle="tab">保定</a></li>
						<li><a href="#home2" data-toggle="tab">秦皇岛</a></li>
						<li><a href="#home3" data-toggle="tab">张家口</a></li>
						<li><a href="#home4" data-toggle="tab">承德</a></li>
						<li><a href="#home5" data-toggle="tab">唐山</a></li>
						<li><a href="#home6" data-toggle="tab">邯郸</a></li>
						<li><a href="#home7" data-toggle="tab">衡水</a></li>
						<li><a href="#home8" data-toggle="tab">廊坊</a></li>
						<li><a href="#home9" data-toggle="tab">沧州</a></li>
						<li><a href="#home10" data-toggle="tab">邢台</a></li>
					</ul>
				</div>
					
				<div class="featured-grids" style="height: 50px;">
					<div id="myTabContent" class="tab-content">
						<div align="center" class="tab-pane fade in active" id="home">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a onclick="scenic(this)" >西柏坡 </a></li> 
								<li><a onclick="scenic(this)" >古城正定 </a></li> 
								<li><a onclick="scenic(this)" >隆兴寺 </a></li> 
								<li><a onclick="scenic(this)" >赵州桥 </a></li> 
								<li><a onclick="scenic(this)" >荣国府 </a></li> 
								<li><a onclick="scenic(this)" >隆兴寺 </a></li> 
								<li><a onclick="scenic(this)" >驼梁 </a></li> 
								<li><a onclick="scenic(this)" >柏林禅寺 </a></li> 
								<li><a onclick="scenic(this)" >抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
								<li><a href="">抱犊寨 </a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home1">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >野三坡 </a></li> 
								<li><a href="" >白洋淀 </a></li> 
								<li><a href="" >白石山</a></li> 
								<li><a href="" >狼牙山 </a></li> 
								<li><a href="" >清西陵 </a></li> 
								<li><a href="">满城汉墓 </a></li> 
								<li><a href="">百里峡 </a></li> 
								<li><a href="">直隶总督署 </a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home2">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >北戴河 </a></li> 
								<li><a href="" >山海关 </a></li> 
								<li><a href="" >南戴河 </a></li> 
								<li><a href="">祖山</a></li> 
								<li><a href="" >老龙头</a></li> 
								<li><a href="">黄金海岸 </a></li> 
								<li><a href="" >鸽子窝公园</a></li> 
								<li><a href="">新澳海底世界 </a></li> 
								<li><a href="">秦皇岛野生动物园 </a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home3">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >草原天路</a></li> 
								<li><a href="" >天漠 </a></li> 
								<li><a href="" >中都草原 </a></li> 
								<li><a href="">燕山</a></li> 
								<li><a href="" >鸡鸣驿</a></li> 
								<li><a href="" >沽源坝上草原</a></li> 
								<li><a href="">空中草原</a></li> 
								<li><a href="">长城岭滑雪场</a></li> 
								<li><a href="">小五台山自然保护区 </a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home4">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >避暑山庄</a></li> 
								<li><a href="" >丰宁坝上</a></li> 
								<li><a href="" >木兰围场</a></li> 
								<li><a href="" >雾灵山 </a></li> 
								<li><a href="">塞罕坝 </a></li> 
								<li><a href="" >普陀宗乘之庙 </a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home5">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >滦州古城</a></li> 
								<li><a href="" >清东陵</a></li> 
								<li><a href="" >月坨岛</a></li> 
								<li><a href="" >菩提岛</a></li> 
								<li><a href="">金沙岛 </a></li> 
								<li><a href="">青山关  </a></li> 
								<li><a href="">南湖公园 </a></li> 
								<li><a href="" >唐山抗震纪念馆</a></li> 
								<li><a href="">开滦国家矿山公园 </a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home6">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >京娘湖</a></li> 
								<li><a href="" >娲皇宫</a></li> 
								<li><a href="" >朝阳沟</a></li> 
								<li><a href="" >古武当山 </a></li> 
								<li><a href="" >元宝山 </a></li> 
								<li><a href="">长寿村 </a></li> 
								<li><a href="">赵王陵</a></li> 
								<li><a href="">广府古城</a></li> 
								<li><a href="">太行五指山 </a></li> 
								<li><a href="">响堂山石窟 </a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home7">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >衡水湖</a></li> 
								<li><a href="" >宝云寺</a></li> 
								<li><a href="" >竹林寺 </a></li> 
								<li><a href="">庆林寺塔 </a></li> 
								<li><a href="">琴瑟园客栈</a></li> 
								<li><a href="" >冀宝斋博物馆</a></li> 
								<li><a href="" >武强年画博物馆</a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home8">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >天下第一城</a></li> 
								<li><a href="" >廊坊市文化艺术中心</a></li> 
								<li><a href="" >胜芳古镇</a></li> 
								<li><a href="" >茗汤温泉度假村 </a></li> 
								<li><a href="" >廊坊自然公园</a></li> 
								<li><a href="">九天休闲谷 </a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home9">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >东光铁佛寺</a></li> 
								<li><a href="">南皮</a></li> 
								<li><a href="" >南大港湿地</a></li> 
								<li><a href="" >吴桥杂技大世界</a></li> 
								<li><a href="" >沧州文庙 </a></li> 
								<li><a href="" >沧州铁狮子</a></li> 
								<li><a href="">纪晓岚文化园</a></li> 
								<li><a href="">海兴小山</a></li> 
								<li><a href="">名人植物园</a></li> 
								<li><a href="">清真北大寺</a></li> 
							</ul>
						</div>
						<div class="tab-pane fade" id="home10">
							<ul class="nav navbar-nav">
								<li><a > </a></li> 
								<li><a > </a></li> 
								<li><a href="" >天河山</a></li> 
								<li><a href="" >天河山</a></li> 
								<li><a href="" >崆山白云洞</a></li> 
								<li><a href="" >九龙峡</a></li> 
								<li><a href="" >峡谷群</a></li> 
								<li><a href="" >云梦山</a></li> 
								<li><a href="">前南峪</a></li> 
								<li><a href="">岐山湖</a></li> 
								<li><a href="">天梯山</a></li> 
								<li><a href="">张果老山</a></li> 
								<li><a href="">邢台玉泉寺</a></li> 
								<li><a href="">河北北武当山</a></li> 
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="promotions">
				<div class="container">
					<section>
						<ul id="da-thumbs" class="da-thumbs">
							<li>
								<a href="${ctxPath}/images/0b1.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b1.jpg" alt="" />
									<div>
										<h5>石家庄</h5>
									</div>
								</a>
							</li>
							<li>
								<a href="${ctxPath}/images/0b2.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b2.jpg" alt="" />
									<div>
										<h5>秦皇岛</h5>
									</div>
								</a>
							</li>
							<li>
								<a href="${ctxPath}/images/0b3.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b3.jpg" alt="" />
									<div>
										<h5>保&nbsp;&nbsp;定</h5>
									</div>
								</a>
							</li>
							<li>
								<a href="${ctxPath}/images/0b4.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b4.jpg" alt="" />
									<div>
										<h5>承&nbsp;&nbsp;德</h5>
									</div>
								</a>
							</li>
							<li>	
								<a href="${ctxPath}/images/0b5.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b5.jpg" alt="" />
									<div>
										<h5>张家口</h5>
									</div>
								</a>
							</li>
							<li>
								<a href="${ctxPath}/images/0b6.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b6.jpg" alt="" />
									<div>
										<h5>邯&nbsp;&nbsp;郸</h5>
									</div>
								</a>
							</li>
							<li>
								<a href="${ctxPath}/images/0b7.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b7.jpg" alt="" />
									<div>
										<h5>沧&nbsp;&nbsp;州</h5>
									</div>
								</a>
							</li>
							<li>
								<a href="${ctxPath}/images/0b8.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b8.jpg" alt="" />
									<div>
										<h5>衡&nbsp;&nbsp;水</h5>
									</div>
								</a>
							</li>
							<li>
								<a href="${ctxPath}/images/0b9.jpg" class="b-link-stripe b-animate-go thickbox">
									<img src="${ctxPath}/images/0b9.jpg" alt="" />
									<div>
										<h5>唐&nbsp;&nbsp;山</h5>
									</div>
								</a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</section>
					<script type="text/javascript" src="${ctxPath}/js/jquery.hoverdir.js"></script>	
					<script type="text/javascript">
						$(function() {
							$('#da-thumbs > li').each( function() { $(this).hoverdir(); } );
						});
					</script>
				</div>
			</div>
		</div>
		<!--景点-->
		<div id="tours" class="container">
			<br />
			<h4 class="tittle">景&nbsp;&nbsp;点</h4>
			<br />
			<div class="col-md-4 promation-grid">
				<img src="${ctxPath}/images/0a1.jpg" class="img-responsive" alt=""/>
				<div class="prom-text">
					<h4>野三坡</h4>
					<div class="prom-bottom">
						<div class="prom-left">
							<h5> 保定  </h5>
						</div>
						<div class="prom-right">
						<h5> 涞水  </h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<p>野三坡位于河北保定市涞水县境内,被称为“北方小桂林”.它由七个各具功能的景区构成,分别是百里峡、拒马河、百草畔、佛洞塔、龙门峡、金华山以及三黄山.</p>　
				</div>
			</div>
			<div class="col-md-4 promation-grid">
				<img src="${ctxPath}/images/0a2.jpg" class="img-responsive" alt=""/>
				<div class="prom-text">
					<h4>木兰围场</h4>
					<div class="prom-bottom">
						<div class="prom-left">
							<h5> 承德 </h5>
						</div>
						<div class="prom-right">
						<h5> 满族蒙古族自治县  </h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<p>木兰围场自然保护区坐落于滦河的上游地区,集中分布在河北省围场满族蒙古族自治县的西部.曾是辽帝狩猎之地,以及清代皇帝举行“木兰秋狝”之所,历史悠久.</p>
				</div>
			</div>
			<div class="col-md-4 promation-grid">
				<img src="${ctxPath}/images/0a3.jpg" class="img-responsive" alt=""/>
				<div class="prom-text">
					<h4>北戴河</h4>
					<div class="prom-bottom">
						<div class="prom-left">
							<h5> 秦皇岛 </h5>
						</div>
						<div class="prom-right">
						<h5> 北戴河区  </h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<p>北戴河地处河北省秦皇岛市中心的西部,是秦皇岛的城市区之一,是中国开发最早的海滨度假区. 北戴河海滨有二十里长、曲折平坦的沙质海滩,自然环境优美,沙软潮平,坡度也比较平缓,是一个优良的天然海水浴场.</p>
				</div>
			</div>
			<div class="col-md-4 promation-grid">
				<img src="${ctxPath}/images/0a4.jpg" class="img-responsive" alt=""/>
				<div class="prom-text">
					<h4>滦州古城</h4>
					<div class="prom-bottom">
						<div class="prom-left">
							<h5> 唐山 </h5>
						</div>
						<div class="prom-right">
						<h5> 滦县  </h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<p>古称滦州,位于河北省滦县滦州镇,地处京畿,紧邻滦河,是通往东北三省的交通要道,是一个经历了千年文化滋养的历史名城,同时也是契丹、鲜卑、女真、蒙古、满、汉多民族聚集地.</p>
				</div>
			</div>
			<div class="col-md-4 promation-grid">
				<img src="${ctxPath}/images/0a5.jpg" class="img-responsive" alt=""/>
				<div class="prom-text">
					<h4>衡水湖</h4>
					<div class="prom-bottom">
						<div class="prom-left">
							<h5> 衡水  </h5>
						</div>
						<div class="prom-right">
						<h5> 冀州  </h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<p>衡水湖俗称“千顷洼”,华北平原第二大淡水湖,位于河北省衡水、冀州、枣强之间的三角地带,是华北平原惟一保持沼泽、水域、滩涂、草甸和森林等完整湿地生态系统的自然保护区.</p>
				</div>
			</div>
			<div class="col-md-4 promation-grid">
				<img src="${ctxPath}/images/0a6.jpg" class="img-responsive" alt=""/>
				<div class="prom-text">
					<h4>赵州桥</h4>
					<div class="prom-bottom">
						<div class="prom-left">
							<h5> 石家庄 </h5>
						</div>
						<div class="prom-right">
						<h5>  赵县  </h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<p>赵州桥又称安济桥,在石家庄东南四十多公里赵县城南.是当今世界上现存最早、保存最完善的古代敞肩石拱桥.建于公元605年,由著名匠师李春设计和建造,入选中国世界纪录协会世界最早的敞肩石拱桥,创造了世界之最.</p>				
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!--gallery-->		
		<!-- team -->
		<div class="team" id="guides">
			<div class="container">
				<h4 class="tittle">游&nbsp;&nbsp;记</h4>
				<br />
				<div class="">
					<div class="col-md-3 team_gd1 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
						<div class="team_pos">
							<div class="team_back"></div>
							<img class="img-responsive" src="${ctxPath}/images/t1.jpg"  alt=" ">
							<div class="team_info">
								<a href="#"  class="face_one"><i class="fc1"></i></a>
								<a href="#"  class="face_one"><i class="fc2"></i></a>
								<a href="#"  class="face_one"><i class="fc3"></i></a>
							</div>
						</div>
						<h4>Filmr Doe</h4>
						<p>Neque porro quisquam est, qui dolorem ipsum quia dolor 
								sit amet, consectetur, adipisci velit, sed quia non numquam.</p>
					</div>
				
					<div class="col-md-3 team_gd1 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
						<div class="team_pos">
							<div class="team_back"></div>
							<img class="img-responsive" src="${ctxPath}/images/t3.jpg"  alt=" ">
							<div class="team_info">
								<a href="#"  class="face_one"><i class="fc1"></i></a>
								<a href="#"  class="face_one"><i class="fc2"></i></a>
								<a href="#"  class="face_one"><i class="fc3"></i></a>
							</div>
						</div>
						<h4>Jaye Smith</h4>
						<p>Neque porro quisquam est, qui dolorem ipsum quia dolor 
								sit amet, consectetur, adipisci velit, sed quia non numquam.</p>
					</div>
					<div class="col-md-3 team_gd1 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
						<div class="team_pos">
							<div class="team_back"></div>
							<img class="img-responsive" src="${ctxPath}/images/t4.jpg"  alt=" ">
							<div class="team_info">
								<a href="#"  class="face_one"><i class="fc1"></i></a>
								<a href="#"  class="face_one"><i class="fc2"></i></a>
								<a href="#"  class="face_one"><i class="fc3"></i></a>
							</div>
						</div>
						<h4>Federica</h4>
						<p>Neque porro quisquam est, qui dolorem ipsum quia dolor 
								sit amet, consectetur, adipisci velit, sed quia non numquam.</p>
					</div>
					<div class="col-md-3 team_gd1 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
						<div class="team_pos">
							<div class="team_back"></div>
							<img class="img-responsive" src="${ctxPath}/images/t2.jpg"  alt=" ">
							<div class="team_info">
								<a href="#"  class="face_one"><i class="fc1"></i></a>
								<a href="#"  class="face_one"><i class="fc2"></i></a>
								<a href="#"  class="face_one"><i class="fc3"></i></a>
							</div>
						</div>
						<h4>Victoria</h4>
						<p>Neque porro quisquam est, qui dolorem ipsum quia dolor 
								sit amet, consectetur, adipisci velit, sed quia non numquam.</p>
					</div>
					<div class="clearfix"></div>		
				</div>
			</div>
		</div>
		<!--team-->
		<!--news-->
		<div class="news" id="news">
			<div class="container">
				<h3 class="tittle"> News</h3>
				<div class="news-grids">
				<div class="col-md-4 news-grid">
					<img src="${ctxPath}/images/p1.jpg" class="img-responsive" alt=""/>
					<div class="news-text">
						<h4>Lorem ipsum</h4>
						<div class="new-bottom">
							<h5> 05 December </h5>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut efficitur ante. Donec dapibus dictum scelerisque. Maecenas semper erat et justo porta auctor nec lobortis elit.</p>
						<div class="more m2">
							<a href="#" class="btn effect6" data-toggle="modal" data-target="#myModal1">Learn More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-grid">
					<img src="${ctxPath}/images/p2.jpg" class="img-responsive" alt=""/>
					<div class="news-text">
						<h4>Lorem ipsum</h4>
						<div class="new-bottom">
							<h5> 30 November </h5>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut efficitur ante. Donec dapibus dictum scelerisque. Maecenas semper erat et justo porta auctor nec lobortis elit.</p>
						<div class="more m2">
							<a href="#" class="btn effect6" data-toggle="modal" data-target="#myModal1">Learn More</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-grid">
					<img src="${ctxPath}/images/p3.jpg" class="img-responsive" alt=""/>
					<div class="news-text">
						<h4>Lorem ipsum</h4>
						<div class="new-bottom">
							<h5> 19 September </h5>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut efficitur ante. Donec dapibus dictum scelerisque. Maecenas semper erat et justo porta auctor nec lobortis elit.</p>
						<div class="more m2">
							<a href="#" class="btn effect6" data-toggle="modal" data-target="#myModal1">Learn More</a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
		</div>
		<!--news-->
		</div>
			<div class="contact"  id="contact">
				<div class="container">
					<h3 class="tittle">Contact</h3>
					<div class="contact-grids">
						<form action="#" method="post">
							<div class="col-md-6 grid-contact">
								<div class="your-top">
									<i class="glyphicon glyphicon-user"> </i>
									<input type="text" name="Name" placeholder="Name"  required >								
									<div class="clearfix"> </div>
								</div>
								<div class="your-top">
									<i class="glyphicon glyphicon-envelope"> </i>
									<input type="text" name="E-mail" placeholder="E-mail"  required>								
									<div class="clearfix"> </div>
								</div>
								<div class="your-top">
									<i class="glyphicon glyphicon-link"> </i>
									<input type="text" name="Website" placeholder="Website"  required>								
									<div class="clearfix"> </div>
								</div>
								
							</div>
							<div class="col-md-6 grid-contact-in">
								<textarea name="Message"  placeholder=" Message"  required></textarea>
								<input type="submit" value="Send">
							</div>
							<div class="clearfix"> </div>
						</form>
					</div>
					<div class="google-map">
						<%-- <iframe src="${ctxPath}/"  frameborder="0" style="border:0" allowfullscreen></iframe> --%>
					</div>
				</div>
			</div>
		<!--footer-->
			<div class="copy-section">
				<div class="container">
					<div class="footer-top">
						<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="${ctxPath}/http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
					</div>
				</div>
			</div>
			<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'home', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="home" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body">
							<div class="news-gr">
							<img src="${ctxPath}/images/p6.jpg" class="img-responsive" />
							<h3 class="tittle1">Trip Guide</h3>
								<p>Nam aliquam pretium feugiat. Duis sem est, viverra eu interdum ac, suscipit nec mauris. Suspendisse commodo tempor sagittis! In justo est, sollicitudin eu scelerisque pretium, placerat eget elit. Praesent faucibus rutrum odio at rhoncus. Pel ermentum pretium. Maecenas ac lacus ut neque rhoncus laoreet sed id tellus. Donec justo tellus.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
<script type="text/javascript">
function scenic(sc){
	var name = sc.text;
	window.location.href = "${ctxPath}/scenic/inter?name="+name;
	<%-- $.ajax({
		url : '${ctxPath}/scenic/ajax/select',
		type : 'POST',
		dataType : 'json',
		data : {
			name :name,
		},
		success:function(data, textStatus, xhr) {
			
		},
		error:function(xhr, textStatus, errorThrown) {
			alert("失败");
		}
	}); --%>
}
</script>
</html>
