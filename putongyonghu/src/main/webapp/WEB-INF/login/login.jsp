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

$(function(){
	
	$(".a").click(function(){
		var zh=$("#user_zh").val();
		var mm=$("#user_mm").val();
		if(zh==null||zh==""||mm==null||mm==""){
			alert("帐号或密码不能为空！");
		}else{
			$.ajax({
				url:"login",
				data:{
					user_zh:zh,	
					user_mm:mm
				},
				type:"post",
				dataType:"json",
				success:function(data){
					if(data){
						alert("登录成功！");
						location="toMain";
					}else{
						alert("帐号密码错误或被禁用！");
						location="toLogin";
					}
				}
			});
		}
	});
});


</script>
<style>
	.a{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体; }
	.b{color: black; height: 40px; width: 60px; font-size: 16px; font-family: 楷体; }
</style>
</head>

<body style="background: #32CD32">
	<table style="margin-top: 200px;">
		<tr>
			<td>帐号</td>
			<td>
				<input type="text" name="user_zh" id="user_zh" placeholder="请输入账号..."><span style="color: red;">${error}</span>
			</td>
		</tr>
		<tr>
			<td>密码</td>
			<td>
				<input type="text" name="user_mm" id="user_mm" placeholder="请输入密码...">
			</td>
		</tr>
	</table>
	<br><br>
	<center>
		<button class="a">登录</button>
		<button class="b" onclick="location='toRegister'">注册</button>
		</center>
</body>
</html>