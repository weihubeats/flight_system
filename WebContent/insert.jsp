<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>添加航班信息</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/styles1.css"
	media="all">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/moment.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// date time picker
		if ($(".iDate.date").length > 0) {
			$(".iDate.date").datetimepicker({
				locale : "zh-cn",
				format : "YYYY-MM-DD",
				dayViewHeaderFormat : "YYYY年 MMMM"
			});
		}
	})
	
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
				<li><a href="flight/selectpage.json">查看航班信息</a></li>
				<li><a href="add_admin.jsp">添加管理员</a></li>
				<li class="active"><a href="">添加航班信息</a></li>
				<li><a href="user/selectUser.json">查看用户</a></li>
				<li><a href="order/selectorderC.json">查看订单</a></li>
				<li><a href="entry.jsp" onclick="destory()">退出登入</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br />
	<br />
	<br />
	<form action="flight/insert.json">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>航空公司</th>
					<th>起飞日期</th>
					<th>起飞城市</th>
					<th>到达城市</th>
					<th>起飞时间</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<div class="form">
							<select id="city" class="select" name="flighname">
								<option value="请选择航空公司 ">请选择航空公司&nbsp&nbsp</option>
								<option value="国际航空">国际航空</option>
								<option value="东方航空">东方航空</option>
								<option value="南方航空">南方航空</option>
								<option value="海南航空">海南航空</option>
								<option value="深圳航空">深圳航空</option>
								<option value="上海航空">上海航空</option>
								<option value="厦门航空">厦门航空</option>
								<option value="四川航空">四川航空</option>
								<option value="山东航空">山东航空</option>
								<option value="春秋航空">春秋航空</option>
							</select>
						</div>
					</td>


					<td>
						<div class="iDate date">
							<input type="text" name=startDate>
							<button type="button" class="addOn"></button>
						</div>
					</td>

					<td>
						<div class="form">
							<select id="startCity" class="select" name="startCity">
								<option value="请选择城市 ">请选择城市&nbsp&nbsp</option>
								<option value="北京">北京</option>
								<option value="天津">天津</option>
								<option value="上海">上海</option>
								<option value="重庆">重庆</option>
								<option value="河北">河北</option>
								<option value="山西">山西</option>
								<option value="内蒙古">内蒙古</option>
								<option value="辽宁">辽宁</option>
								<option value="吉林">吉林</option>
								<option value="黑龙江">黑龙江</option>
							</select>
						</div>
					</td>
					<td>
					
					<div class="form">
							<select id="arrivalCity" class="select" name="arrivalCity">
								<option value="请选择城市 ">请选择城市&nbsp&nbsp</option>
								<option value="北京">北京</option>
								<option value="天津">天津</option>
								<option value="上海">上海</option>
								<option value="重庆">重庆</option>
								<option value="河北">河北</option>
								<option value="山西">山西</option>
								<option value="内蒙古">内蒙古</option>
								<option value="辽宁">辽宁</option>
								<option value="吉林">吉林</option>
								<option value="黑龙江">黑龙江</option>
							</select>
						</div>
					<td><input type="text" name="startTime"></td>
				</tr>
			</tbody>
			<thead>
				<tr>
					<th>到达时间</th>
					<th>价格</th>
					<th>剩余票数</th>
					<th>准点率</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="arrivalTime"></td>
					<td><input type="text" name="price"></td>
					<td><input type="text" name="ticket"></td>
					<td>
						<div class="form">
							<select id="city" class="select" name="punctuality">
								<option value="0">请选择&nbsp&nbsp</option>
								<option value="0">0%</option>
								<option value="10">10%</option>
								<option value="20">20%</option>
								<option value="30">30%</option>
								<option value="40">40%</option>
								<option value="50">50%</option>
								<option value="60">60%</option>
								<option value="70">70%</option>
								<option value="80">80%</option>
								<option value="90">90%</option>
								<option value="100">100%</option>
							</select>
						</div>
					</td>
					<td><input type="submit" value="提交" class="btn btn-info">
					<td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>