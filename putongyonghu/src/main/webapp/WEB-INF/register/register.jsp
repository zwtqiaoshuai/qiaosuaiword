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
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery-easyui-1.5.3/jquery.easyui.min.js"></script><script type="text/javascript">
$(function(){
	$("#save").click(function(){
		$.post(
			"register",
			{
				user_zh:$("#user_zh").val(),
				user_mm:$("#user_mm").val(),
				user_name:$("#user_name").val(),
				user_role:$("#user_role").val(),
				user_sex:$("#user_sex:checked").val(),
				user_card:$("#user_card").val(),
				user_age:$("#user_age").val(),
				user_address:$("#user_address").val(),
				user_phone:$("#user_phone").val(),
				user_yu:$("#user_yu").val(),
				user_zhuangtai:$("#user_zhuangtai").val()
			},
			function(obj){
				console.log(obj);
				if(obj.a!=="1"){
					if(obj.n!=null){
						$("#n").text(obj.n);
					}else{
						$("#n").text("");
					}
					if(obj.user_zh!=null){
						$("#user_zh1").text(obj.user_zh);
					}else{
						$("#user_zh1").text("");
					}
					if(obj.user_name!=null){
						$("#user_name1").text(obj.user_name);
					}else{
						$("#user_name1").text("");
					}
					if(obj.user_sex!=null){
						$("#user_sex1").text(obj.user_sex);
					}else{
						$("#user_sex1").text("");
					}
					if(obj.user_card!=null){
						$("#user_card1").text(obj.user_card);
					}else{
						$("#user_card1").text("");
					}
					if(obj.user_age!=null){
						$("#user_age1").text(obj.user_age);
					}else{
						$("#user_age1").text("");
					}
					if(obj.user_phone!=null){
						$("#user_phone1").text(obj.user_phone);
					}else{
						$("#user_phone1").text("");
					}
					if(obj.user_address!=null){
						$("#user_address1").text(obj.user_address);
					}else{
						$("#user_address1").text("");
					}
				}else{
					location="<%=request.getContextPath() %>/user/toLogin";
				}
			},
			"json"
		)
	})
})
</script>
<style>
	.a{color: black; height: 40px; width: 60px;  font-size: 16px; font-family: 楷体; }
	.b{color: black; height: 40px; width: 60px; font-size: 16px; font-family: 楷体; }
</style>
</head>
<body style="background: #32CD32">
	<table>
		<tr>
			<td>用户帐号</td>
			<td>
				<input type="text" name="user_zh" id="user_zh">
				<span id="user_zh1"></span>
			</td>
		</tr>
		<tr>
			<td>密码</td>
			<td>
				<input type="text" name="user_mm" id="user_mm">
				<span id="n"></span>
			</td>
		</tr>
		<tr>
			<td>用户名称</td>
			<td>
				<input type="text" name="user_name" id="user_name">
				<span id="user_name1"></span>
			</td>
		</tr>
		<tr>
			<td>用户性别</td>
			<td>
				<input type="radio" name="user_sex" value="男" id="user_sex">男
				<input type="radio" name="user_sex" value="女" id="user_sex">女
				<span id="user_sex1"></span>
			</td>
		</tr>
		<tr>
			<td>身份证号</td>
			<td>
				<input type="text" name="user_card" id="user_card">
				<span id="user_card1"></span>
			</td>
		</tr>
		<tr>
			<td>年龄</td>
			<td>
				<input type="text" name="user_age" id="user_age">
				<span id="user_age1"></span>
			</td> 
		</tr>
		<tr>
			<td>住址</td>
			<td>
				<input type="text" name="user_address" id="user_address">
				<span id="user_address1"></span> 
			</td>
		</tr>
		<tr>
			<td>手机号</td>
			<td>
				<input type="text" name="user_phone" id="user_phone">
				<input type="hidden" name="user_role" id="user_role" value="2">
				<span id="user_phone1"></span>
				<input type="hidden" name="user_zhuangtai" value="活动" id="user_zhuangtai">
				<input type="hidden" name="user_yu" value="0" id="user_yu">
			</td>
		</tr>
		<tr>
			<td colspan="10">
				<button id="save" class="a">注册</button>
				<button onclick="location='toLogin'" class="b">登录</button>
			</td>
		</tr>
	</table>
</body>
</html>