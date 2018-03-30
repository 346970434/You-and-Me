<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<head>
    <title>Our Place</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/Chat/css/style.css">
</head>
<body>
<div id="header" class="construct clear-float">
    <div class="logo fl">
        Our<span>Place</span>
    </div>
    <div class="navs">
        <ul>
            <li><a href="/Chat/front/">首页</a></li>
            <li class="hasmenu"><a href="/Chat/user/getinpic">照片</a></li>
            <li><a href="/Chat/music">音乐</a></li>
            <li><a href="/Chat/artical">文章</a></li>
             <li><a href="/Chat/user/logout">登出</a></li>
        </ul>
        <div class="menu-container">
            <div class="menu-bg">
                <div class="menu">
                    <div class="scroll clear-float">
                        <div class="plate fl">
                            <div class="linker">
                                <img src="/Chat/img/pic0.jpg" alt="">
                            </div>
                            <div class="linker">
                                <img src="/Chat/img/nav_yang.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="search fr clear-float">
        <form action="#">
        
        </form>

    </div>
</div>
<div id="body">
    <div class="banner">
        <div class="image imageload" origin-data="/Chat/img/01.jpg"></div>
        <div class="image imageload" origin-data="/Chat/img/02.jpg"></div>
        <div class="image imageload" origin-data="/Chat/img/03.jpg"></div>
    </div>
</div>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="/Chat/script/jquery.easing.min.js"></script>
<script src="/Chat/script/EasyBanner.js"></script>
<script src="/Chat/script/common.js"></script>
<script>

    var banner = new EasyBanner({
        wrap : '#body .banner',
        img : '.image',
        speed : 6000,
        interval : 10000
    });
</script>
</body>
</html>