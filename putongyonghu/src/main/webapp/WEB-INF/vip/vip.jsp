<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css2/index2.css" type="text/css"></link>
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery/js3/jquery-1.8.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/jquery-easyui-1.5.3/demo/demo.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/jquery-easyui-1.5.3/jquery.easyui.min.js"></script><script type="text/javascript">
	
	
	 $(function(){
		
		$("#save").click(function(){
			var id = $("#user_id").val();
			var pwd=$("#pwd").val();
			var pwdd=$("#pwdd").val();
			var address=$("#user_address").val();
			var phone=$("#user_phone").val();
			if(pwd==""||pwdd==""||address==""||phone==""||pwd==null||pwdd==null||address==null||phone==null){
				alert("输入框不能为空！");
			}else{
			 	$.post(
						"doUpdate",	
						{
							user_id:id,
							pwd:pwd,
							pwdd:pwdd,
							user_address:address,
							user_phone:phone
						},
						function(obj){
							if(obj){
								location="list";
							} else {
								$("#error").append("两次密码不一致");
							}
				}, "json") 
			}
		});
	}); 
 
	
	
</script>
<style>
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
	height: 40px;
	width: 60px;
	font-size: 16px;
	font-family: 楷体;
}

.e {
	color: black;
	height: 40px;
	width: 60px;
	font-size: 16px;
	font-family: 楷体;
}
</style>
</head>
<body style="background: #32CD32">
	<center>
		<div id="five">
			<button onclick="location='toLogin'" class="a">登录</button>
			<button onclick="location='toRegister'" class="b">注册</button>
			<button onclick="location='toMain'" class="c">返回</button>
		</div>
	</center>
	<form id="form">
		<table>
			<tr>
				<td>用户名</td>
				<td>${u.user_name }</td>

			</tr>
			<tr>
				<td>账户余额</td>
				<td>${u.user_yu }元</td>
			</tr>
			<tr>
				<td>密码</td>
				<td>
				<input type="text" name="pwd" id="pwd" style="color: red;" />
				<input type="hidden" name="user_id" id="user_id"value="${u.user_id }"/>
				</td>
			</tr>
			<tr>
				<td>确认密码</td>
				<td><input type="text" name="pwdd" id="pwdd"
					style="color: red;" /><span id="error" style="color: red;"></span></td>
			</tr>
			<tr>
				<td>真实姓名</td>
				<td>${u.user_name }</td>
			</tr>
			<tr>
				<td>性别</td>
				<td>${u.user_sex }</td>
			</tr>
			<tr>
				<td>身份证号</td>
				<td>${u.user_card }</td>
			</tr>
			<tr>
				<td>年龄</td>
				<td>${u.user_age }</td>
			</tr>
			<tr>
				<td>通讯地址</td>
				<td><input type="text" name="user_address"
					value="${u.user_address }" id="user_address" /></td>
			</tr>
			<tr>
				<td>联系电话</td>
				<td><input type="text" name="user_phone"
					value="${u.user_phone }" id="user_phone" /></td>
			</tr>
			<tr>
				<td colspan="10">
					<input type="button" class="d" id="save" value="修改">
					 <button type="reset" class="e">重置</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>