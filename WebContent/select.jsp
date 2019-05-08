<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
	<title>机票详情</title>
<script type="text/javascript">
	function onclick1() {
		window.location.href="select.json?page="+${page+1}+"&startDate=${condition.startDate}&startCity=${condition.startCity}&arrivalCity=${condition.arrivalCity}&price=${condition.price}"; 
	}
	
	function onclick2() {
		window.location.href="select.json?page="+${page-1}+"&startDate=${condition.startDate}&startCity=${condition.startCity}&arrivalCity=${condition.arrivalCity}&price=${condition.price}";
	}
	
	
	
	<%-- function destory() {
		alert("退出成功")！;
		<% session.removeAttribute("user");%>
	} --%>

</script>
	
	
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation"> 
    <div class="container-fluid"> 
    <div class="navbar-header"> 
        <a class="navbar-brand" href="#">欢迎回家${user.username}</a> 
    </div> 
    <div> 
        <ul class="nav navbar-nav"> 
            <li class="active"><a href="../index.jsp">查询航班</a></li> 
            <li><a href="../order/selectorder.json">我的订单</a></li>
            <li><a href="../user/selectUser1.json?userid=${user.userid}">个人中心</a></li>
            <li><a href="../about.jsp">关于我们</a></li> 
            <li><a href="../entry.jsp" onclick="destory()">退出</a></li>  
        </ul> 
    </div> 
    </div> 
</nav>
	<br/><br/><br/>

	<table class="table table-hover">
	<thead>
		<tr>
			<th>航空编号</th>
			<th>航空公司</th>
			<!-- <th></th> -->
			<th>起飞日期</th>
			<th>起飞城市</th>
			<th>到达城市</th>
			<th>起飞时间</th>
			<th>到达时间</th>
			<th>价格</th>
			<th>剩余票数</th>
			<th>准点率</th>
			<th>操作</th>
			
		</tr>
	</thead>
	<tbody>
		<c:forEach var="fligt" items="${flights}">
			<tr>
				<td  style="display:table-cell; vertical-align:middle">${fligt.flightid}</td>
				<td style="display:table-cell; vertical-align:middle">${fligt.flighname}</td>
				<!-- <td style="display:table-cell; vertical-align:middle"><img  src="../img/flight1.jpg" width="500px" height="257px"></td> -->
				<td style="display:table-cell; vertical-align:middle">${fligt.startDate}</td>
				<td style="display:table-cell; vertical-align:middle">${fligt.startCity}</td>
				<td style="display:table-cell; vertical-align:middle">${fligt.arrivalCity}</td>
				<td style="display:table-cell; vertical-align:middle">${fligt.startTime}</td>
				<td style="display:table-cell; vertical-align:middle">${fligt.arrivalTime}</td>
				<td style="display:table-cell; vertical-align:middle">${fligt.price}</td>
				<td style="display:table-cell; vertical-align:middle">${fligt.ticket}</td>
				<td style="display:table-cell; vertical-align:middle">${fligt.punctuality}%</td>
				<c:if test="${fligt.ticket>0}">
				<td style="display:table-cell; vertical-align:middle"><a href="../order/addorder.json?flightid=${fligt.flightid}&userid=${user.username}&orderticket=1">选定</a></td>
				</c:if>                                            
				<c:if test="${fligt.ticket==0}">
				<td style="display:table-cell; vertical-align:middle">已售罄</td>
				</c:if>
				
			</tr>
		</c:forEach>
		<tr>
			<td></td>
			<td colspan="2"></td>
			<c:if test="${page>1 }">
			<td><input type=button value="上一页" class="btn btn-info" onclick="onclick2()"></td>
			</c:if>
			<td><input type=button value="当前${page}页" class="btn btn-info"></td>
			<td colspan="5"><input type=button value="下一页" class="btn btn-info" onclick="onclick1()"></td>
			<td/>
			</tr>		
	</tbody>
</table>

</body>
</html>