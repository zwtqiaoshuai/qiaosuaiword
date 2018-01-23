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
<style>
	span{color: red;}
	.a{color: black; height: 40px; width: 120px;  font-size: 16px; font-family: 楷体; }
	
</style>
</head>
<body style="background: #32CD32">
<center>
<span style="color: red; font-size: 18px;">您的订单预定成功！</span><br>
<span style="color: orange; font-size: 18px;">订单号：${bb.bill_name }</span><Br>
<span style="color: green; font-size: 18px;">订单生成时间：${bb.bill_time }</span><Br>
<span style="color: blue; font-size: 18px;">成交金额：${bb.bill_sum }</span><br>
<span style="color: #9B30FF; font-size: 18px;">以下是该订单详细信息：</span><br>
</center>
<table>
		<tr>
			<td>序号</td>
			<td>描述</td>
			<td>单价（元）</td>
			<td>购票数（张）</td>
			<td>总金额（元）</td>
		</tr>
		<c:forEach items="${orderList }" var="o" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${o.shop_dsc }</td>
				<td>${o.shop_price }</td>
				<td>${o.order_zs}</td>
				<td>${o.order_sum}</td>
			</tr>
		</c:forEach>
		<tr>
			<td>总计</td>
			<td></td>
			<td></td>
			<td>${zzs}</td>
			<td>${zsum}</td>
		</tr>
	</table>
	<center>
	<span style="color: #DC143C; font-size: 18px;">该定单已出票，两日内将通过快递送达，请注意查收。</span>
	<button onclick="location='mybill'" class="a">查看我的订单</button></center>
</body>
</html>