<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>订单页面</title>
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

<%-- function destory() {
	alert("退出成功！");
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
				<li ><a href="../index.jsp">查询航班</a></li>
				<li class="active"><a href="#">我的订单</a></li>
				<li><a href="../user/selectUser1.json?userid=${user.userid}">个人中心</a></li>
				<li><a href="../about.jsp">关于我们</a></li>
				<li><a href="../entry.jsp" onclick="destory()">退出</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br />
	<br />
	<br />
	<table class="table table-hover">
		<thead>
			<tr>
				<th>订单编号</th>
				<!-- <th></th> -->
				<th>订单时间</th>
				<th>订单人</th>
				<th>出发日期</th>
				<th>起飞时间</th>
				<th>到达时间</th>
				<th>价格</th>
				<th>准点率</th>
				<th>订单票数</th>
				<th>订单状态</th>
				<th colspan="2">操作</th>

			</tr>
			
		</thead>
		<tbody>
			<c:forEach var="order" items="${orders}">
				<tr>
					<td style="display:table-cell; vertical-align:middle">${order.orderid}</td>
					<!-- <td style="display:table-cell; vertical-align:middle"><img  src="../img/index1.jpg" width="500px" height="200px"></td> -->
					<td style="display:table-cell; vertical-align:middle">${order.createDate}</td>
					<td style="display:table-cell; vertical-align:middle">${order.username}</td>
					<td style="display:table-cell; vertical-align:middle">${order.flight.startDate}</td>
					<td style="display:table-cell; vertical-align:middle">${order.flight.startTime}</td>
					<td style="display:table-cell; vertical-align:middle">${order.flight.arrivalTime}</td>
					<td style="display:table-cell; vertical-align:middle">${order.flight.price}</td>
					<td style="display:table-cell; vertical-align:middle">${order.flight.punctuality}%</td>
					<td style="display:table-cell; vertical-align:middle">${order.orderticket}</td>
					<c:if test="${order.state == 0}">
					<td style="display:table-cell; vertical-align:middle">未支付</td>
					<td style="display:table-cell; vertical-align:middle"><a href="updateorder.json?orderid=${order.orderid}">支付</a></td>
					</c:if>
					<c:if test="${order.state == 1}">
					<td style="display:table-cell; vertical-align:middle">已支付</td>
					<td style="display:table-cell; vertical-align:middle"><a href="deleteorder.json?orderid=${order.orderid}">退订</a></td>
					</c:if>
				</tr>
			</c:forEach>
			<!-- <tr>
				<td colspan="3"></td>
				<td colspan="8"><button class="btn btn-info" onclick="pay()">支付</button></td>
				</tr> -->
		</tbody>
	</table>

</body>
</html>