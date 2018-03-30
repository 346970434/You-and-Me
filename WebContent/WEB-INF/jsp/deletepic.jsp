<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 不忽视el表达式-->
<%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">
<title>删除图片</title>

<script type="text/javascript">
	function DeletePicture(event){
		var msg = "后悔还来得及！";
		if(confirm(msg) == true){
			
		}
		else{
			var event = event || window.event;
			event.preventDefault();
		}
	}
</script>
</head>
<body>
	
	<div class="page-header">
  <h1>Delete Pciture <a href="/Chat/user/getinpic"><small>Return HomePage</small></a></h1>
</div>
	<table class="table table-hover">
	
	<c:forEach items="${requestScope.piclist}" var="pic" varStatus="status">
		<tr>
			<td><img src="http://119.29.163.49${pic.picUrl}" height="100px" id="p${status.index}"></td>
			<td>
					<form method="post" action="/Chat/user/delete">
					<input type = "text" value="${pic.picName}" name = "picname" style=" display:none;">		
					<button  type="submit" class = "btn btn-info" onclick="DeletePicture()">删除</button>
					</form>
			</td>
											
		</tr>				
	</c:forEach>
	</table>

</body>
<script src="/Chat/js/jquery-1.11.0.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.js"></script>
</html>