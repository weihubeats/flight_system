<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>查看航班信息</title>
<style>
form{padding:0px 15px 15px 120px;}
form{width:500px;height:300px;}
form fieldset{border:0;align:center;}
form label{display:inline-block;width:60px;text-align:right}
input{width:240px;height:30px;}
#submit{width:200px;height:35px;position:relative;left:70px;}
#submit:hover{
		cursor: pointer;
		background:#D8D8D8;
	}
body{
	width:100%; 
    height:100%;
	background: #E9E9E9; 
	}
#box{position:fixed;left:0px;right:0px;width:706px;margin-left:auto;margin-right:auto;top:100px;} 
#code{width: 70px;
	 height: 40px;
     font-size:18px;}
	#captcha_img{
    position:relative;
	bottom:-15px;
	}
a{position:relative;bottom:-10px;}	
</style>

<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	var a = "${error}";
	var b = "${sucess}";
	if ( a != null && a !="") {
		alert("${error}");
		<% session.removeAttribute("error");%>
	}
	if ( b != null && b !="") {
		alert("${sucess}");
		<% session.removeAttribute("sucess");%>
	}
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
				<li ><a href="flight/selectpage.json">查看航班信息</a></li>
				<li class="active"><a href="#">添加管理员</a></li>
				<li><a href="insert.jsp">添加航班信息</a></li>
				<li ><a href="user/selectUser.json">查看用户</a></li>
				<li><a href="order/selectorderC.json">查看订单</a></li>
				<li><a href="entry.jsp" onclick="destory()">退出登入</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br/><br/><br/>
	<div id="box">
    <form method="post"action="user/addAdmin.json" >
    <fieldset>
      <p>
        <label>账号:</label>
        <input type="text"placeholder="账号"required="required" name="username"/>
      </p>
      <p>
        <label>密码:</label>
        <input type="password"placeholder="密码"required="required" name="userpassword"/>
      </p>
      <p>
        <label>确定密码:</label>
        <input type="password"placeholder="确定密码"required="required" />
      </p>
      <p>
        <label>身份证号码:</label>
        <input type="password"placeholder="身份证号码"required="required" name="useridentity"/>
      </p>
      <p>
        <label>电话:</label>
        <input type="password"placeholder="电话"required="required" name="userphone"/>
      </p>
      <p>
        <label>邮箱:</label>
        <input type="password"placeholder="邮箱"required="required" name="usermail"/>
      </p>
      <!-- <p>
        <label>验证码:</label>
        <input type="text"name="authcode"value=""required="required" id="code"/>  
        <img id="captcha_img"src="idcode.php"/>
        <a href="javascript:void(0)"onclick="document.getElementById('captcha_img').src='idcode.php'">看不清</a>javascript:void(0)是一个死链接不会跳转也不会返回到顶部.
      </p> -->
      <p>
        <input type="submit"value="注册"name="submit" id="submit"/>
      </p>
    </fieldset>
    </form>
  </div>


</body>
</html>