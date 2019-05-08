<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>个人中心</title>

<link rel="stylesheet" type="text/css" href="css/styles2.css">
<style type="text/css">
body,td,th { font-family: "Source Sans Pro", sans-serif; }
body { background-color: #2B2B2B; }
.text{
 width:100%;
 flex-flow:row nowrap;
}
</style>
</head>
<body>


<div class="wrapper">

	<div class="container">
	
 	
		<h1>Welcome</h1>
		
		<form class="form" action="user/update.json" method="post">
		<input type = "text" style ="display:none" name = "userid" value="${user.userid}">		
		     <h4>账号</h4>
		     <input type="text"  value="${user.username}" name="username">	
			 <h4>密码</h4>
			<input type="text" value="${user.userpassword}" name="userpassword">
			 <h4>电话</h4>
			<input type="text" value="${user.userphone}" name="userphone">
			 <h4>身份证</h4>
			<input type="text" value="${user.useridentity}" name="useridentity">
			<button type="submit" id="login-button">修改</button>
		</form>
	</div>
	<c:if test="${not empty hint}">
	 	<div>修改成功</div>
 	</c:if> 
	<ul class="bg-bubbles">
		
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
</div>

<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>


</body>
</html>