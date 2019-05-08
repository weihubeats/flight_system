<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 条纹表格</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<table class="table table-striped">
	<caption>条纹表格布局</caption>
	<thead>
		<tr>
			<th>出发日期</th>
			<th>起飞城市</th>
			<th>到达城市</th>
			<th>价格</th>	
		</tr>
	</thead>
	<tbody>
		<form action="flight/select.json">
		<tr>
			<td>
				<div class="iDate date">
					<input type="text" name=startDate>
					<button type="button" class="addOn"></button>
				</div>
			</td>
			<td><input type="text" name="startCity"></td>
			<td><input type="text" name="arrivalCity"></td>
			<td><input type="text" name="price"></td>
			<td><input type="submit" value="提交"><td>
		</tr>
		</form>		
		<tr>
			<td>Sachin</td>
			<td>Mumbai</td>
			<td>400003</td>
		</tr>
	</tbody>
</table>
</body>
</html>