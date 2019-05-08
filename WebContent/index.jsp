<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询页面</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<!-- <img  src="img/flight.jpg" width="1000px" height="257px"> -->
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"> 
    
    <div class="container-fluid"> 
    <div class="navbar-header"> 
        <a class="navbar-brand" href="#">欢迎你${user.username}</a> 
    </div> 
    <div> 
        <ul class="nav navbar-nav"> 
            <li class="active"><a href="#">查询航班</a></li> 
            <li><a href="order/selectorder.json">我的订单</a></li>
            <li><a href="user/selectUser1.json?userid=${user.userid}">个人中心</a></li>
            <li><a href="about.jsp">关于我们</a></li>  
            <li><a href="entry.jsp">退出</a></li>  
           <!--  <li class="dropdown"> 
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">  -->
                    <!-- 其他 <b class="caret"></b> 
                </a> 
                <ul class="dropdown-menu"> 
                    <li><a href="#">了解我们</a></li> 
                    <li><a href="#">帮助</a></li> 
                    <li><a href="#">Jasper Report</a></li> 
                    <li class="divider"></li> 
                    <li><a href="#">分离的链接</a></li> 
                    <li class="divider"></li> 
                    <li><a href="#">另一个分离的链接</a></li> 
                </ul> 
            </li> 
        </ul>  -->
    </div> 
    </div> 
</nav>
	<br/><br/><br/>
	<table align="center" width="800px" border="1">
		<tr>
			<td>出发日期</td>
			<td>起飞城市</td>
			<td>到达城市</td>
			<td>价格</td>
		</tr>
		<form action="flight/select.json">
		<tr>
			<td>
				<div class="iDate date">
					<input type="text" name=startDate >
					<button type="button" class="addOn"></button>
				</div>
			</td>
				<td>
			<div class="form">
							<select id="city" class="select" name="startCity">
								<option value="">请选择城市&nbsp&nbsp</option>
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
							<select id="city" class="select" name="arrivalCity">
								<option value="">请选择城市&nbsp&nbsp</option>
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
			<td><input type="text" name="price"></td>
			<td><input type="submit" value="查询" class="btn btn-info"><td>
		</tr>
		</form>		
	</table>

</body>
</html>