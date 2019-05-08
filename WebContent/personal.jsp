<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>个人中心页面</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body style="background: url(img/personal.jpg)">
	<script type="text/javascript">
	var a = "${sucess}";
	if ( a != null && a !="") {
		alert("${sucess}");
		<% session.removeAttribute("sucess");%>
	}
	
	</script>
	
	
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">欢迎回家${user.username}</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li ><a href="index.jsp">查询航班</a></li>
				<li ><a href="order/selectorder.json">我的订单</a></li>
				<li class="active"><a href="../user/selectUser1.json?userid=${user.userid}">个人中心</a></li>
				<li><a href="about.jsp">关于我们</a></li>
				<li><a href="entry.jsp" onclick="destory()">退出</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br />
	<br />
	<br />
	<form class="form" action="user/update.json" method="post">
	<table class="table table-hover">
		<thead>
			<tr>
				<th></th>
				<th>账号</th>
				<th>密码</th>
				<th>电话</th>
				<th>身份证</th>
				<th>邮箱</th>
				
			</tr>

		</thead>
		<tbody>
				<tr>
				    <td><input type = "text" style ="display:none" name = "userid" value="${user.userid}"></td>	
					<td><input type="text"  value="${user.username}" name="username"></td>
					<td><input type="text" value="${user.userpassword}" name="userpassword"></td>
					<td><input type="text" value="${user.userphone}" name="userphone"></td>
					<td><input type="text" value="${user.useridentity}" name="useridentity"></td>
					<td><input type="text" value="${user.usermail}" name="usermail"></td>
					<td><button type="submit" id="login-button" class="btn btn-info">修改</button></td>
				</tr>
		</tbody>
	</table>
	</form>
</body>
</html>