<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
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
<body class="easyui-layout">
 	<table class="easyui-datagrid" title="商品信息" pagination="true" id="Hsdata" style="width:700px;height:250px"
			data-options="singleSelect:true,collapsible:true,url:'<%=request.getContextPath() %>/user/easy',method:'post'">
        <thead>
            <tr>
            <th data-options="field:'shop_id'">商品ID</th>
            <th data-options="field:'shop_dsc'">商品描述</th>
            <th data-options="field:'shop_time'">商品时间</th>
            <th data-options="field:'shop_zong'">总票数</th>
            <th data-options="field:'shop_sheng'">剩余票数</th>
            <th data-options="field:'shop_zhuangtai'">商品状态</th>
            <th data-options="field:'shop_price'">商品单价</th>
        </tr>
    </thead>
</table>
</html>