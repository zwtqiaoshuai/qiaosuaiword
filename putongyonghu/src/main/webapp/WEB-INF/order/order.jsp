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

$(function(){
	
	var s=$("#z").text();
	if(s==undefined||s==""||s==null){	
		$("#bill").attr("disabled",true);
	}else{
		 $("#bill").click(function(){
				$.ajax({
					url:"bill",
					type:"post",
					dataType:"json",
					success:function(data){
						if(data){
							alert("结账成功！");
							location="ajaxbill";
						}else{
							alert("余额不足！");
						}
					}
				});		
		});
	}
	
	
	 
	 
	 
	 
	
});


</script>
</head>
<style>
	.a{color: black; height: 40px; width: 60px;  font-size: 16px;font-family: 楷体; }
	.b{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体;  }
	.c{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体; }
	.e{color: black; height: 40px; width: 100px;  font-size: 16px; font-family: 楷体; }
	.f{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体; }
	.g{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体; }
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
			<td>描述</td>
			<td>单价（元）</td>
			<td>购票数（张）</td>
			<td>总金额（元）</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${orderList }" var="o" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${o.shop_dsc }</td>
				<td>${o.shop_price }</td>
				<td>${o.order_zs}</td>
				<td>${o.order_sum}</td>
				<td>
					<button onclick="location='del?order_id='+${o.order_id}" class="g">删除</button>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td>总计</td>
			<td></td>
			<td></td>
			<td id="z">${zzs }</td>
			<td>${zsum }</td>
			<td></td>
		</tr>
	</table>
	<table>
		<tr>
			<td>
				<button onclick="location='list'" class="e">继续订票</button>
				<button id="bill" class="f">结账</button>
			</td>
		</tr>
	</table>
</body>
</html>