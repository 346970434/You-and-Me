<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!-- 不忽视el表达式-->
 <%@ page isELIgnored ="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>All of Pictures</title>
		<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css"
			rel="stylesheet">
		<style type="text/css">
		body {
			text-align: center;
		}
		
		.photo {
			position: relative;
		}
		
		.title {
			position: absolute;
			bottom: 20px;
			left: 0px;
			text-align: center;
			right: 0px;
			font-size: 24px;
			font-weight: bold;
			color: #979797;
		}
		
		.photos {
			margin: auto;
			font-size: 0px;
		}
		</style>
	</head>
<!-- <script type="text/javascript">
	//动态显示图片问题测试中
	window.onload = function() {

		$.get(
		//get异步访问
		"/Chat/showpic", //url
		function(data) {//执行成功的回调函数
			var index = 0;
			$.each(data, function(n, urls) {

				$.each(urls, function(name, url) {
					//此处动态生成图片
					
					var id = 'p' + index;
					var img = document.getElementById(id);
					img.src = JSON.stringify(url.url);
					index++;
				});
			});
		}, "json" //data的类型

		);

	}
</script> -->
<body>
<audio loop autoplay style="display:none">
            <source src="http://music.163.com/song/media/outer/url?id=4875075.mp3" 
            type="audio/mpeg" >
            您的浏览器不支持 audio 元素。
        </audio>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">照片都在这儿了~</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/Chat/main">首页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> 上传图片 <b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li>
							<form action="/Chat/upload/pic" method="post"
								enctype="multipart/form-data">
								<input type="file" name="picture"> <input type="submit"
									align="middle" value="上传">
						</li>
						</form>
				</li>
			</ul>
			</li>
			<li><a href="/Chat/user/listpic">删除图片</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<c:set var="index" value="0" /> 
	<div class="datouwang-container">
		<div class="photos">
			<c:forEach items="${requestScope.piclist}" var="pic" varStatus="status">
				<div class="photo" >
					<img src="http://119.29.163.49${pic.picUrl}" id="p${status.index}">
					<div class="title"></div>
				</div>
			</c:forEach>
		</div>
	</div>

	<script src="/Chat/js/jquery-1.11.0.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.js"></script>
	<script src="/Chat/js/jquery.xgallerify.min.js"></script>
	<script type="text/javascript">
		var gallery = $('.photos').gallerify({
			margin : 10,
			mode : 'default',
			lastRow : 'adjust'
		});
	</script>
</body>
</html>