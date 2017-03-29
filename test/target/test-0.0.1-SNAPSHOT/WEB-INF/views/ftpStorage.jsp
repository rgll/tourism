<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/echarts.js"></script>
<script src="<%=path%>/js/jquery-1.12.2.js"></script>
</head>
<body style="height: 100%; margin: 0">
	<div id="container" style="height: 70%"></div>
	<script type="text/javascript">

var dom = document.getElementById("container");
var myChart = echarts.init(dom);
 //图表显示提示信息
myChart.showLoading({
	text : "图表数据正在努力加载..."
});
var data = []; //剩余可用存储容量
var data2 = [];//已使用存储rongl
var data3 = [];//存储总容量
var date = []; //x轴时间
var tenantID = "opdw1_097jc";
var host = "DSJ-signal-4T-640";
var timeFrom = "2016-09-08 11:38:00";
var timeTill = "2016-09-10 11:38:00";
//到后台
$(function(){	
     $.ajax({
		url:"<%=path%>/api/tenantID/ftp/disk/trend/get2",
		data : {
			auth : "61d0297da5fb49190942861ca1562d92",  // 登录名
			host : host,        // 主机
			timeFrom: timeFrom,       // 起始时间
			timeTill: timeTill,        // 截止时间
			isDetail: "1"                // 标注值取“1”
		},
		type : "get",
		//dataType: 'json',
		async : true,
		success : function(data0) {
			for (var i = 0; i < data0.result.length; i++) {
				data[i] = data0.result[i].value_avg / 100000;
				data2[i] = 600 - data[i];
				data3[i] = 600;
			}
			for (var i = 0; i < data0.result.length; i++) {
				date[i] = formatdate(data0.result[i].clock);
			}
			var a = formatSeconds(data0.result[data0.result.length-1].clock-data0.result[0].clock);
			option = {
				title : { //图表头
					text : host+'：能力开放平台网运租户 '+tenantID+' FTP 存储使用情况（'+a+'）',
					textStyle : {
						fontSize : '12'
					},
					left : '30%',
					top : '7%'
				},
				tooltip : { //提示框组件。
					trigger : 'axis' //提示所有条数
				},
				legend : { //图例组件。
					orient : 'vertical', //使给租户分配的剩余可用存储容量等三项竖着排列
					left : '1%', //左端
					top : '72%', //顶端
					bottom : '1%', //底端
					data : [ {
						name : '备注',
					//icon: 'roundRect',
					}, {
						name : '给租户分配的剩余可用存储容量',
						icon : 'square'
					}, {
						name : '给租户分配的已使用存储容量',
						icon : 'square',
					}, {
						name : '给租户分配的存储总容量',
						icon : 'square'
					} ],
					formatter : function(name) {
						if (name == '给租户分配的剩余可用存储容量') {
							return '给租户分配的剩余可用存储容量'
									+ '        ' + '[平均]   '
									+ 420 + ' TB   ' + 30
									+ ' TB   ' + 120 + ' TB   '
									+ 400 + 'TB';
						} else if (name == '给租户分配的已使用存储容量') {
							return '给租户分配的已使用存储容量'
									+ '           ' + '[平均]   '
									+ 231 + ' TB   ' + 10
									+ ' TB   ' + 100 + ' TB   '
									+ 405 + 'TB';
						} else if (name == '给租户分配的存储总容量') {
							return '给租户分配的存储总容量'
									+ '                 '
									+ '[平均]   ' + 331
									+ ' TB   ' + 220 + ' TB   '
									+ 200 + ' TB   ' + 600
									+ 'TB';
						} else {
							return '                                                               '
									+ '最新'
									+ '      '
									+ ' 最小'
									+ '      '
									+ '平均'
									+ '      ' + '最大';
						}
					},
					selectedMode : false
				},
				grid : { //直角坐标系内绘图网格，单个 grid 内最多可以放置上下两个 X 轴，左右两个 Y 轴。
					//设置坐标系位置
					left : '3%',
					right : '4%',
					bottom : '40%',
					containLabel : true //grid 区域是否包含坐标轴的刻度标签,在无法确定坐标轴标签的宽度,可以设为 true 防止标签溢出容器。
				},
				dataZoom: [   //组件 用于区域缩放，
			            {
			                show: true,
			                realtime: true,
			                start: 65,
			                end: 85,
			                left : '60%',
							right : '4%',
							bottom : '20%',
			            },
			            {
			                type: 'inside',
			                realtime: true,
			                start: 65,
			                end: 85
			            }
			    ],
				xAxis : {   //X轴
					boundaryGap : false, //把线延伸到头尾
					data : date,
					splitLine : { //坐标轴在 grid 区域中的分隔线。
						show : true,
						lineStyle : {
							type : 'dotted' //点线
						}
					},
					axisLine : { //坐标轴轴线相关设置。
						lineStyle : {
							color : [ 'gray' ]
						}
					},
					axisLabel : { //坐标轴刻度标签的相关设置。
						show : true,
						interval : 0, //可以设置成 0 强制显示所有标签。如果设置为 1，表示『隔一个标签显示一个标签』，如果值为 2，表示隔两个标签显示一个标签，以此类推。
						rotate : 90, //刻度旋转90度角
						textStyle : {
							color : "black",
							fontSize : 10//刻度大小
						},
					},
				},
				yAxis : { //y坐标轴
					type : 'value',
					min : 0,
					interval : 100, //单位递增
					axisLabel : { //坐标轴刻度标签的相关设置。
						formatter : '{value} TB'
					},
					// boundaryGap: ['10%', '10%'],  //坐标轴两边留白
					splitLine : { //坐标轴在 grid 区域中的分隔线。
						show : true, //设置成ture才能加虚线
						lineStyle : {
							type : 'dotted' // 点线
						}
					},
				},
				series : [ //系列列表。每个系列通过 type 决定自己的图表类型 ,line是折线/面积图
					{
						name : '备注',
						type : 'pie', //把它设成类型不一样的,提示框里就没有提示了
						itemStyle : { //设置线条与方块颜色
							normal : {
								color : 'white'
							}
						},
					}, {
						name : '给租户分配的剩余可用存储容量',
						type : 'line',
						symbol : 'none', //去掉小圆点
						data : data,
						itemStyle : {
							normal : {
								color : 'green',
							}
						},
					}, {
						name : '给租户分配的已使用存储容量',
						type : 'line',
						symbol : 'none', //去掉小圆点
						data : data2
					}, {
						name : '给租户分配的存储总容量',
						type : 'line',
						symbol : 'none', //去掉小圆点
						data : data3
					},
				]
				};
				if (option && typeof option === "object") {
					myChart.hideLoading();  //隐藏动画加载效果。
					myChart.setOption(option, true); //合并新的参数和数据，然后刷新图表
				}

			},
			error : function(e) {
				alert("失败！");
			}
		});
	});
	/*转换日期格式给X轴*/
	function formatdate(dt){
		var time = new Date(parseInt(dt)* 1000);
		var year = time.getFullYear();
		var mouth = time.getMonth();
		var day = time.getDate();
		var hours = time.getHours();
		var minutes = time.getMinutes();
		//return year+'-'+add0(mouth)+'-'+add0(day)+' '+add0(hours)+':'+add0(minutes);
		return add0(mouth+1)+'-'+add0(day)+' '+add0(hours)+':'+add0(minutes);
	}
	function add0(m){return m<10?'0'+m:m;};
	/**获得查询时间间隔*/
	function formatSeconds(value) {
	    var theTime = parseInt(value);// 秒
	    var theTime1 = 0;// 分
	    var theTime2 = 0;// 小时
	    if(theTime >= 60) {
	        theTime1 = parseInt(theTime/60);
	        theTime = parseInt(theTime%60);
            if(theTime1 >= 60) {
            	theTime2 = parseInt(theTime1/60);
           	 	theTime1 = parseInt(theTime1%60);
            }
	    }
        var result = ""+parseInt(theTime)+"s";
        if(theTime1 > 0) {
        	if(result == "0s"){
        		result = ""+parseInt(theTime1)+"m ";
        	}else{
        		result = ""+parseInt(theTime1)+"m "+result;
        	}
        }
        if(theTime2 > 0) {
       		if(result == "0s"){
        		result = ""+parseInt(theTime2)+"h ";
       		}else{
        		result = ""+parseInt(theTime2)+"h "+result;
        	}
        }
	    return result;
	}
	</script>
</body>
</html>