<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>查看航班信息</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function onclick1() {
		window.location.href="selectUser.json?page=" + ${page+1};
	}
	
	function onclick2() {
		window.location.href="selectUser.json?page=" + ${page-1};
	}
	
	<%-- function destory() {
		alert("退出成功！");
		<% session.removeAttribute("user");%>
	} --%>

</script>
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">管理员${user.username}</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li ><a href="../flight/selectpage.json">查看航班信息</a></li>
				<li><a href="../add_admin.jsp">添加管理员</a></li>
				<li><a href="../insert.jsp">添加航班信息</a></li>
				<li class="active"><a href="#">查看用户</a></li>
				<li><a href="../order/selectorderC.json">查看订单</a></li>
				<li><a href="../entry.jsp" onclick="destory()">退出登入</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br/><br/><br/>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>用户编号</th>
				<th>用户账号</th>
				<th>用户电话</th>
				<th>用户身份证</th>
				<th>用户邮箱</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.userid}</td>
					<td>${user.username}</td>
					<td>${user.userphone}</td>
					<td>${user.useridentity}</td>
					<td>${user.usermail}</td>
				</tr>
			</c:forEach>
			<tr>
			<td></td>
			<c:if test="${page >1}">
			<td><input type=button value="上一页" class="btn btn-info" onclick="onclick2()"></td>			
			</c:if>
			<td><input type=button value="当前${page}页" class="btn btn-info"></td>
			<td ><input type=button value="下一页" class="btn btn-info" onclick="onclick1()"></td>
			</tr>
		</tbody>
	</table>

</body>
</html>