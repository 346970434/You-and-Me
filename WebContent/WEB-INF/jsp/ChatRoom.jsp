<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.Container{
	padding-right: 15px;
	padding-left: 15px;
	margin-right: 70%;
	margin-left: 5%;
}
</style>

<script type="text/javascript">

	window.onload = function(){
		//OurTogetherTime();
		//var time = setInterval(OurTogetherTime,1000);
		ReFreshChatPanelWhenReceive();
	}

	function OurTogetherTime(){
		
		var ourtime = document.getElementById("ourtime");
		var syear = 2018;
		var smonth = 3;
		var day = 8;
		var time = new Date();
		var month = time.getMonth() + 1;
		
		/* var t = time.getFullYear() + "-" + month + "-"
	     + time.getDate() + " " + time.getHours() + ":"
	     + time.getMinutes() + ":" + time.getSeconds(); */
	     
	     ourtime.innerHTML = "天";
	     
	}


	function ReFreshChatPanelWhenSendMessage() {
		var panel = document.getElementById("ChatPanel").value;
		var input = document.getElementById("ChatInput").value;
		if(panel != ""){
			document.getElementById("ChatPanel").value =  panel + "\n" +input;
		}
		else{
			document.getElementById("ChatPanel").value =  input;
		}
		
		SendMessage(input);
		
		
	}
	
	function ReFreshChatPanelWhenReceive(){
		var panel = document.getElementById("ChatPanel").value;
		var input = ReceiveMessage();
		if(panel != ""){
			document.getElementById("ChatPanel").value =  panel + "\n" +input;
		}
		else{
			document.getElementById("ChatPanel").value =  input;
		}
	}
	
	function ReceiveMessage(){
		$.get(
			//get异步访问
				"/Chat/receivemessage", //url
				function(data){//执行成功的回调函数
					return data.message;
				},
				"text" //data的类型
				
		);
		
	}
	
	function SendMessage(message){
		$.post(
			//get异步访问
				"/Chat/sendmessage", //url
				{"message":message},
				function(data){//执行成功的回调函数
					//响应的参数data
				},
				"text" //data的类型
				
		); 
	}
</script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Our Memory</title>
</head>
<body>


<div class="Container">

	<div id = "ourtime"></div>

	<textarea id = "ChatPanel" rows="10px" cols="15px" disabled></textarea>
	
	Field1: <input type="text" id="ChatInput">
	<button onclick="ReFreshChatPanelWhenSendMessage()" >提交</button>
<br />
</div>

</body>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>  
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.js"></script>
</html>