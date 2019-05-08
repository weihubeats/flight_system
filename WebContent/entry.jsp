<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>航班管家票务管理系统</title>
</head>
<script type="text/javascript">

function myCheck()
{
  for(var i=0;i<document.form1.elements.length-1;i++)
  {
   if(document.form1.elements[i].value=="")
   {
     alert("所有选项不能为空，请填写完整！！");
     document.form1.elements[i].focus();
     return false;
   }
  }
  return true;
  
}



function IsZIP()     
{     
        var str = document.getElementById('userphone').value.trim();    
        if(str.length!=0){    
        reg=/^\d{11}$/;    
        if(!reg.test(str)){    
            alert("对不起，您输入的电话号码格式不正确!");//请将“字符串类型”要换成你要验证的那个属性名称！    
            document.getElementById('userphone').value="";
        }    
        }    
}

function isCardNo(card) 
{ 
  // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X 
  var str1 = document.getElementById('useridentity').value.trim();
  var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
  if(str1.length!=0){ 
  if(reg.test(card) === false) 
  { 
    alert("身份证输入不合法"); 
    document.getElementById('useridentity').value="";
  } 
  }
}


function passworda()     
{     
        var a = document.getElementById('password').value.trim(); 
        var b = document.getElementById('password1').value.trim();
        if(a != b){    
            alert("对不起，两次输入的密码不一致请重新输入！！");//请将“字符串类型”要换成你要验证的那个属性名称！  
            document.getElementById('password').value = "";
            document.getElementById('password1').value = "";
        }
}  
</script>
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


<link rel="stylesheet" type="text/css" href="css/styles.css">
<!--[if IE]>
		<script src="http://libs.baidu.com/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="jq22-container" style="padding-top: 100px">
		<div class="login-wrap">
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
					for="tab-1" class="tab">登入</label> <input id="tab-2" type="radio"
					name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
				<div class="login-form">
					<div class="sign-in-htm">

						<form action="user/entry.json" method="post">
							<div class="group">
								<label for="user" class="label">账号</label> <input id="user"
									type="text" class="input" name="username">
							</div>
							<div class="group">
								<label for="pass" class="label">密码</label> <input id="pass"
									type="password" class="input" data-type="password"
									name="userpassword">
							</div>

							<div class="group">
								<input id="check" type="checkbox" class="check" checked>
								<label for="check"><span class="icon"></span> 保存密码</label>
							</div>
							<div class="group">
								<input type="submit" class="button" value="Sign In">
							</div>
						</form>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="find_password.jsp">忘记密码?</a>
						</div>
					</div>
					<form action="user/addUser.json" name="form1" onSubmit="return myCheck()">
					<div class="sign-up-htm">
						<div class="group">
							<label for="user" class="label">账号</label> <input id="user"
								type="text" class="input" name="username">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label> <input id="password"
								type="password" class="input" data-type="userpassword" name="userpassword">
						</div>
						<div class="group">
							<label for="pass" class="label">确认密码</label> <input id="password1"
								type="password" class="input" data-type="password" onblur="passworda()">
						</div>
						<div class="group">
							<label for="pass" class="label">身份证号码</label> <input id="useridentity"
								type="text" class="input" name="useridentity" onblur="isCardNo(this.value)" >
						</div>
						<div class="group">
							<label for="pass" class="label">电话</label> <input id="userphone"
								type="text" class="input" name="userphone" onblur="IsZIP()">
						</div>
						<div class="group">
							<label for="pass" class="label">邮箱</label> <input id="usermail"
								type="text" class="input" name="usermail">
						</div>
						<div class="group">
							<input type="submit" class="button" value="Sign Up">
						</div>
						</form>
						<div class="hr"></div>
						<div class="foot-lnk">
							<label for="tab-1">Already Member?</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>