<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找回密码</title>
</head>
<body>

<script type="text/javascript">

var a = "${erro}";
if ( a != null && a !="") {
	alert("${erro}");
	<% session.removeAttribute("erro");%>
}

function bb() {
	var usermail = document.getElementById('usermail').value;
	window.location = "user/findPassword.json?usermail=" + usermail
}

</script>

<link href="css/main.css" rel="stylesheet" type="text/css" />
<h1>邮箱找回密码密码</h1>
<h2>${user.username}，你好！</h2>
<p class="cz_pass">你正在通过邮箱重置密码.<br />
请输入邮箱，完成密码重置操作</p>
<div class="pass_p"><label>邮箱</label><input type="text" value="" class="pass_p1" id="usermail"></div>
<a href="#" onclick="bb()"  class="cz_btn">找回密码</a>
</body>
</html>