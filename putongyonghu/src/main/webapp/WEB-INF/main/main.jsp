<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery/js3/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/demo/demo.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
</head>
<style>
a {
	color: red;
	text-decoration: none;
	display: block;
	line-height: 80px;
	
}

a:hover {
	color:white;
	background: black;
	border: 1px;
	border-radius: 10px;
}

h1 {
	color: #8B7D6B;
	text-align: center;
	padding-top: 8px;
	font-family: 楷体;
}

#two ul li {
	color: red;
	font-size: 30px;
	line-height:40px;
	list-style-type: none;
	
}

#three ul li {
	color: #8B5A00;
	font-size: 18px;
	line-height: 35px;
	font-family: 楷体;
}

#big {
	background: #32CD32;
	height: 700px;
	width: 1300px;
}

#one {
	height: 60px;
	width: 700px;
	text-align: center;
}

#five {
	padding-top: 10px;
}

.a {
	color: black;
	height: 40px;
	width: 60px;
	font-size: 16px;
	font-family: 楷体;
}
.b {
	color: black;
	height: 40px;
	width: 60px;
	font-size: 16px;
	font-family: 楷体;
}

.c {
	color: black;
	height: 40px;
	width: 60px;
	font-size: 16px;
	font-family: 楷体;
}

.d {
	color: black;
	height: 50px;
	width: 80px;
	font-size: 16px;
}

#two {
	background: #7CFC00;
	height: 516px;
	width: 230px;
	text-align: center;
	float: left;
	margin-top: 22px;
	padding-right: 45px;
	font-family: 楷体;
}

#three {
	background: #EEEE00;
	height: 516px;
	width: 525px;
	float: right;
	margin-top: 22px;
	line-height: 40px;
	font-size: 20px;
}

#four {
	background: orange;
	height: 516px;
	width: 500px;
	float: right;
	margin-top: 22px;
}

#four ul li {
	list-style-type: none;
	font-size: 30px;
	line-height: 80px;
	padding-right: 50px;
	font-family: 楷体;
}
</style>
<body>
	<center>
		<div id="big">
			<div id="one">
				<h1>电子商务平台（V2.0）</h1>
			</div>
			<div id="five">
				<button onclick="location='toLogin'" class="a">登录</button>
				<button onclick="location='toRegister'" class="b">注册</button>
				<button onclick="location='logout'" class="c">注销</button>
			</div>
			<h2 style="color:#00868B;">
				欢迎 <span style="color:#00868B;font-family: 楷体;">【${uu.user_name }】</span>登录成功！
			</h2>
			<div id="two">
				<ul>
					<li><a href="toMain">首页</a></li>
					<li><a href="list">实时订票</a></li>
					<li><a href="mybill">我的订单</a></li>
					<li><a
						href="<%=request.getContextPath() %>/user/toVip?id=${user_id}">会员信息</a></li>
					<li><a
						href="<%=request.getContextPath() %>/user/toPay?id=${user_id}">账户充值</a></li>
				</ul>
			</div>
			<div id="four">
				<h1>二组成员</h1>
				<ul>
					<li>娄佳伟</li>
					<li>吕春鹏</li>
					<li>梁宁宁</li>
					<li>孙杨杰</li>
				</ul>
			</div>
			<div id="three">
				<h1>项目目标</h1>
				<ul>
					<li>实现一个真实的、基于RIA的电子商务平台（EBP）系统</li>
					<li>增量式开发，循序渐进完成项目</li>
					<li>掌握基于SSH架构的RIA Web应用程序的编程和调试技巧</li>
					<li>主要涉及以下知识点：</li>
					<li>jQuery/DWR框架及AJAX技术</li>
					<li>SSH架构的Web应用程序实现</li>
					<li>JavaScript及CSS技术</li>
					<li>使用Oracle数据库作为数据源</li>
					<li>可选地，在Linux操作系统中部署并运行</li>
				</ul>
			</div>
		</div>
	</center>
	<button onclick="location='toEasy'">EasyUi</button>
</body>
</html>