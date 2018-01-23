<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
<script type="text/javascript">
	id = ${u.user_id};
	user_yu = ${u.user_yu};
	$(function(){
		
		$("#save").click(function(){
			var mo=$("#je").val();
			if(mo==null||mo==""){
				alert("请输入充值金额！");
			}else{
				$.post(
						"<%=request.getContextPath()%>/user/doPay",
						{
							user_id:id,
							user_yu:user_yu,
							je:$("#je").val(),
						},
						function(obj){
							if(obj){
								alert("充值成功！")
								location="<%=request.getContextPath()%>/user/list";
							}else{
								alert("充值失败");
							}
						},
						"json"
					)
			}
			
		})
	})
</script>

<style>
	.a{color: black; height: 40px; width: 60px; font-size: 16px;font-family: 楷体; }
	.b{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体; }
	.c{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体;}
	.e{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体;}
</style>
</head>
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
			<td>用户名：</td>
			<td>${u.user_name }</td>
		</tr>
		<tr>
			<td>账户余额：</td>
			<td>${u.user_yu }</td>
		</tr>
		<tr>
			<td>充值方式：</td>
			<td>
				<select>
					<option>微信</option>
					<option>支付宝</option>
					<option>QQ</option>
					<option>银行卡</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>充值金额：</td>
			<td>
				<input type="text" name="je" id="je" style="color: red;"/>
			</td>
		</tr>
		<tr>
			<td colspan="10">
				<button id="save" class="e">充值</button>
			</td>
		</tr>
	</table>
</body>
</html>