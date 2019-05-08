<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>重置密码</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<script type="text/javascript">
	var a = "${sucess}";
	if ( a != null && a !="") {
		alert("${sucess}");
		<% session.removeAttribute("sucess");%>
	}
	
	function passworda()     
	{     
	        var c = document.getElementById('password').value.trim(); 
	        var b = document.getElementById('password1').value.trim();
	        if(c != b){    
	            alert("对不起，两次输入的密码不一致请重新输入！！");//请将“字符串类型”要换成你要验证的那个属性名称！  
	            document.getElementById('password').value = "";
	            document.getElementById('password1').value = "";
	        }
	} 
	
	<%-- function destory() {
		<% session.removeAttribute("user");%>
	} --%>

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
				<th>密码</th>
				<th>确定密码</th>
			</tr>

		</thead>
		<form class="form" action="user/update.json" method="post">
		<tbody>
				<tr>
				    <td><input type = "text" style ="display:none" name = "userid" value="${user.userid}"></td>	
					<td><input type="text"  value="" name="password" id="password"></td>
					<td><input type="text" value="" name="userpassword" id="password1" onblur="passworda()"></td>
					<td><button type="submit" id="login-button" class="btn btn-info">重置</button></td>
				</tr>
		</tbody>
	</table>
	</form>
</body>
</html>