<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>查看订单</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function onclick1() {
		window.location.href="selectorderC.json?page=" + ${page+1};
	}
	
	function onclick2() {
		window.location.href="selectorderC.json?page=" + ${page-1};
	}
	<%-- function destory() {
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
				<li ><a href="../user/selectUser.json">查看用户</a></li>
				<li class="active"><a href="#">查看订单</a></li>
				<li><a href="../entry.jsp" onclick="destory()">退出登入</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br/><br/><br/>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>订单编号</th>
				<th>订单时间</th>
				<th>订单人</th>
				<th>出发日期</th>
				<th>起飞时间</th>
				<th>到达时间</th>
				<th>价格</th>
				<th>准点率</th>
				<th>订单票数</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="order" items="${orders}">
				<tr>
					<td>${order.orderid}</td>
					<td>${order.createDate}</td>
					<td>${order.username}</td>
					<td>${order.flight.startDate}</td>
					<td>${order.flight.startTime}</td>
					<td>${order.flight.arrivalTime}</td>
					<td>${order.flight.price}</td>
					<td>${order.flight.punctuality}</td>
					<td>${order.orderticket}</td>
				</tr>
			</c:forEach>
			<tr>
			<td></td>
			<td></td>
			<c:if test="${page>1 }">
			<td><input type=button value="上一页" class="btn btn-info" onclick="onclick2()"></td>
			</c:if>
			<td><input type=button value="当前${page}页" class="btn btn-info"></td>
			<td colspan="5"><input type=button value="下一页" class="btn btn-info" onclick="onclick1()"></td>
			</tr>
		</tbody>
	</table>

</body>
</html>