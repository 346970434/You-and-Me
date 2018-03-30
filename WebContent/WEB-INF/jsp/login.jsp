<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登陆看照片~</title>

<link rel="stylesheet" type="text/css" href="/Chat/css/styles3.css">
<style type="text/css">
body,td,th { font-family: "Source Sans Pro", sans-serif; }
body { background-color: #2B2B2B; }
</style>
</head>
<body>


<div class="wrapper">

	<div class="container">
		<h1>登录先~</h1>
		<form class="form" method="post"><!-- action="/Chat/user/login" -->
			<input type="text" placeholder="Username" name = "username" id = "username">
			<input type="password" placeholder="Password" name = "password" id = "password">
			<button type="submit" id="login-button" onclick="VerifyLogin()">Login</button>
		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
</div>

<script type="text/javascript" src="/Chat/js/jquery-2.1.1.min.js"></script>
<!-- <script type="text/javascript">
$('#login-button').click(function(event){
	event.preventDefault();
	$('form').fadeOut(500);
	$('.wrapper').addClass('form-success');
}); -->

</script>
<script type="text/javascript">
	function VerifyLogin(){
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		/* $.get(
				//get异步访问
					"/Chat/user/verify", //url
					{"username":username,"password":password},
					function(data){//执行成功的回调函数
						if(data == "密码或者账号错误,重新登陆!"){
							alert(data);
						}
					 	else if(data == "密码正确"){
							$(window).attr('location','/Chat/user/getinpic');
						}
						
					}
					
			); */
			
		$.ajax({
			url: "/Chat/user/verify",
			async:false,
			data:{"username":username,"password":password},
			success:function(data){
				if(data == "密码或者账号错误,重新登陆!"){
					alert(data);
				}
			 	else if(data == "密码正确"){
					$(window).attr('location','/Chat/user/getinpic');
				}
				
			}
			
		});
		
	}
</script>

</body>
</html>