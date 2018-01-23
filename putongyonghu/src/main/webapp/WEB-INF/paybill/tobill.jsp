<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css2/index2.css" type="text/css"></link>
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery/js3/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/demo/demo.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery-easyui-1.5.3/jquery.easyui.min.js"></script><script type="text/javascript">


</script>
</head>
<style>
	.a{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体;}
	.b{color: black; height: 40px; width: 60px;  font-size: 16px;font-family: 楷体; }
	.c{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体;}
	.d{color: black; height: 40px; width: 100px;  font-size: 16px; font-family: 楷体;}
</style>
<body style="background: #32CD32">
<center>
	<div id="five">
		<button onclick="location='toLogin'" class="a">登录</button>
		<button onclick="location='toRegister'"class="b">注册</button>
		<button onclick="location='toMain'"class="c">返回</button>
	</div>
</center>
	<table>
		<tr>
			<td>序号</td>
			<td>订单号</td>
			<td>生成时间</td>
			<td>金额（元）</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${billList }" var="b" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${b.bill_name }</td>
				<td>${b.bill_time }</td>
				<td>${b.bill_sum }</td>
				<td><button onclick="location='xqing?bill_id='+${b.bill_id}" class="d">查看详情</button></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>