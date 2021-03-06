<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
<head>
<meta charset="utf-8">
<title>Music</title>
<meta name="keywords" content="Music" />
<meta name="description" content="person music" />
<link rel="stylesheet" type="text/css" href="/Chat/Video/css/style.css" />
<link rel="stylesheet" type="text/css" href="/Chat/Video/css/player.css" />
<link rel="Shortcut Icon" href="/Chat/Video/images/favicon.ico" />
<script type="text/javascript" src="/Chat/Video/js/modernizr.js"></script>
<script>
if ((!to3d()) || document.documentMode == 10 || document.documentMode == 11){ 
	window.location="error/error.html";
}
</script>
</head>
<body>



<!--头部 开始-->
<div id="header">
    <!--顶部bar 开始-->

    <div id="headCont">
        <audio id="audioPlayer"></audio>
    	<!--二级导航-->
        <nav class="sub_nav">
            <div class="nav_list">
                <ul>
                    <li>
                    	<a href="" class="smallogo">
                        	<span class="mini_logo"></span>
                        </a>
                    </li>
                    <li><a href="" class="home"></a></li>
                    
                    <div class="sub_list" id="sub_list">
                        <p class="active">
                        	<a href="?cat=9">That music dwells in my mind.</a>
                        </p>
                    </div>
                </ul>
            </div>
        </nav>
    </div>
  	<!--头部导航  结束-->
</div>

<!-- 音乐馆 模块 开始  default-->
<section class="section_cont">
    <!--轮播图 开始 -->
    <div class="main_banner">
        <div class="main_banner_bg"></div>
        <div class="main_banner_wrap">
            <div class="main_banner_box" id="m_box">
                <a href="javascript:void(0)" class="banner_btn js_pre">
                    <span class="banner_btn_arrow"><i></i></span>
                </a>
                <a href="javascript:void(0)" class="banner_btn btn_next js_next">
                    <span class="banner_btn_arrow"><i></i></span>
                </a>
                <ul>
                    <li id="imgCard0">
                        <a href=""><span style="opacity:0;"></span></a>      
                        <img src="/Chat/Video/main_banner/pic0.jpg" alt="">
                        <p style="bottom:0">我们绕了这么一圈才遇到，我比谁都更明白你的重要.</p>
                    </li> 
                    <li id="imgCard1">
                        <a href=""><span style="opacity:0.4;"></span></a>      
                        <img src="/Chat/Video/main_banner/pic4.png" alt="">
                        <p>决定了你的手我握了不会放掉.</p>
                    </li> 
                    <li id="imgCard2">
                        <a href=""><span style="opacity:0.4;" ></span></a>        
                        <img src="/Chat/Video/main_banner/pic1.jpg" alt="">
                        <p>终于等到你，还好我没放弃</p>
                    </li> 
                    <li id="imgCard3">
                        <a href=""><span style="opacity:0.4;"></span></a>      
                        <img src="/Chat/Video/main_banner/pic2.jpg" alt="">
                        <p>尚好的青春都是你，没有片刻不想你.</p>
                    </li> 
                    <li id="imgCard4">
                        <a href=""><span style="opacity:0.4;"></span></a>      
                        <img src="/Chat/Video/main_banner/pic3.jpg" alt="">
                        <p>宁愿一生都不说话，都不想讲假话欺骗你</p>
                    </li> 
                </ul>
                <!--火狐倒影图层-->
                <p id="rflt"></p>
                <!--火狐倒影图层-->
            </div>
            <!--序列号按钮-->
            <div class="btn_list">
                <span class="cur"></span><span></span><span></span><span></span><span></span>        
            </div>
        </div>
    </div>
    <!--轮播图 结束 -->
    
<!-- 
    <div class="new_mv new_common">
   
        <div class="new_mv_title new_common_title index_mv_title">
            <span>Magic box</span>
            <a href="?cat=6" class="more"></a>
            <ul>
                <li><a class="cur" href="javascript:;">dream</a></li>
                <li><a href="javascript:;">spirit</a></li>
                <li><a href="javascript:;">magic</a></li>
            </ul>
        </div>
        
        <div class="new_mv_body index_mv_body">
         
             <div class="mvList" id="mv_rank_list" style="display:block;">
                <ul class="sb" id="main">
			        <li>
                        <a href="javascript:;" class="playIcon" >
                            <img width="220" height="125" src="http://p1.music.126.net/DpmzdxcucvbDztcuaBbWiQ==/18734578627337366.jpg" class="attachment-220x125 wp-post-image" alt="mv_1x2_10" /> 
                            <strong>周兴哲</strong>
                            <span>
                                 <font>在你耳边说 &#8211; 周兴哲</font>
                                 <font><i></i></font>
                                 <font><i></i>10<em>2</em></font>
                            </span>
                        </a>
                    </li>
		            <li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/wME0oX7VY7fEkKvbXgzlrA==/19122706230471650.jpg" class="attachment-220x125 wp-post-image" alt="" />
                            <strong>澤野弘之</strong>
                            <span>
                                <font>God of ink &#8211;  SawanoHiroyuki</font>
                                <font><i></i></font>
                                <font><i></i>9<em>2</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/OX-yCGzOUHbhqiKK9Xx4Vg==/4442026976217692.jpg" class="attachment-220x125 wp-post-image" alt="" />                
                            <strong>flowering</strong>
                            <span>
                                <font>white silence(album version) &#8211; TK from 凛として時雨</font>
                                <font><i></i></font>
                                <font><i></i>3<em>2</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                           <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/dlC4rAiDvq_uUi2fpnxKMA==/109951162819138078.jpg" class="attachment-220x125 wp-post-image" alt="" />                 
                            <strong>饭碗的彼岸</strong>
                            <span>
                                <font>结び -饭碗的彼岸</font>
                                <font><i></i></font>
                                <font><i></i>1<em>2 </em></font>
                            </span>
                        </a>
                    </li>
					<li>
                       <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/WStPGvMUlDC89Wus9813zA==/109951163014870789.jpg" class="attachment-220x125 wp-post-image" alt="" />                      
                            <strong>SawanoHiroyuki[nZk]</strong>
                            <span>
                                <font>VV - ALK &#8211; SawanoHiroyuki[nZk]</font>
                                <font><i></i></font>
                                <font><i></i>0<em>2</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/lf9G9OQf_ouA_FuPZjm1HA==/890604418498843.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>梶浦由记</strong>
                            <span>
                                <font>M41+42 &#8211; 梶浦由记</font>
                                <font><i></i></font>
                                <font><i></i>0<em>2</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                      <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>张芸京</strong>
                            <span>
                                <font>偏爱 &#8211; 张芸京</font>
                                <font><i></i></font>
                                <font><i></i>10<em>2</em></font>
                            </span>
                        </a>
                    </li>
				    <li>
                       <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/4E5b_0eDTiMCzYKiVSAerw==/19165587184063665.jpg" class="attachment-220x125 wp-post-image" alt="" />                       
                            <strong>周杰伦</strong>
                            <span>
                                <font>算什么男人 &#8211; 周杰伦</font>
                                <font><i></i></font>
                                <font><i></i>1<em>26</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/YIhF9kpKMx_wBKQFN-DwTw==/81363860472987.jpg" class="attachment-220x125 wp-post-image" alt="" />                          
                            <strong>刘亦菲</strong>
                            <span>
                                <font>兰若词 &#8211; 刘亦菲</font>
                                <font><i></i></font>
                                <font><i></i>7<em>23</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/fJ4Y4PN_h0Mg3ByQ2yfL9g==/838927371993316.jpg" class="attachment-220x125 wp-post-image" alt="" />        
                            <strong>miu-clips</strong>
                            <span>
                                <font>open &#8211; miu-clips</font>
                                <font><i></i></font>
                                <font><i></i>90<em>3</em></font>
                            </span>
                        </a>
                    </li>
			    </ul>
            </div>
             -->
            <!--2spirit-->
            <div class="mvList">
                <ul id="spirit">
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/lW4YKD6cMgm32nI66CzWVg==/5702067301704441.jpg" class="attachment-220x125 wp-post-image" alt="" />                            
                            <strong>梶浦由記</strong>
                            <span>
                                <font>M19+20 &#8211; 梶浦由記</font>
                                <font><i></i></font>
                                <font><i></i>12<em>6</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/tFTRt1H87rReNTyO1K9IDQ==/18498183627713149.jpg" class="attachment-220x125 wp-post-image" alt="" />                        
                            <strong>梶浦由記</strong>
                            <span>
                                <font>Sis puella magica! &#8211; 梶浦由記</font>
                                <font><i></i></font>
                                <font><i></i>4<em>27</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/7xaV2qB-T1d9m8b1XZC6tQ==/725677674344222.jpg" class="attachment-220x125 wp-post-image" alt="" /> 
                            <strong>梶浦由記</strong>
                            <span>
                                <font>月は优しく (月) &#8211; 梶浦由記</font>
                                <font><i></i></font>
                                <font><i></i>7<em>22</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                       <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/Iqckrd2sOB1ztqrSOw4XzA==/109951162841140691.jpg" class="attachment-220x125 wp-post-image" alt="" />                        
                            <strong>染音若蔡</strong>
                            <span>
                                <font>Euterpe エウテルペ  &#8211; 染音若蔡</font>
                                <font><i></i></font>
                                <font><i></i>4<em>9</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                       <a href="javascript:;" class="playIcon">
                           <img width="220" height="125" src="http://p1.music.126.net/4xHOkSVWH-n6p5pB3Jf0yQ==/109951162922204274.jpg" class="attachment-220x125 wp-post-image" alt="" />
                            <strong>杨秉音</strong>
                            <span>
                                <font>幻光&#8211; 杨秉音</font>
                                <font><i></i></font>
                                <font><i></i>23<em>1</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                      <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/rkJSVKRZkfLXOoVwXtiB4w==/18283778858733705.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>神罗Shinra</strong>
                            <span>
                                <font>世界の約束 -神罗Shinra</font>
                                <font><i></i></font>
                                <font><i></i>8<em>7</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                       <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/HdmtedPRZEEBduHcmUnk3w==/853221023209311.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>久石譲</strong>
                            <span>
                                <font>Cave OF Mind &#8211; 久石譲</font>
                                <font><i></i></font>
                                <font><i></i>6<em>9</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/GNKtRK8w7edPw3jAsavL2A==/5980243743832365.jpg" class="attachment-220x125 wp-post-image" alt="" />                       
                            <strong>K. Williams</strong>
                            <span>
                                <font>幽灵公主 &#8211; K. Williams</font>
                                <font><i></i></font>
                                <font><i></i>1<em>9</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/k_WRxDY1qQ4ztB5uFFrvoA==/17907745881679448.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>魏小涵</strong>
                            <span>
                                <font>心之逆鳞&#8211; 魏小涵</font>
                                <font><i></i></font>
                                <font><i></i>7<em>25</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/-c3qURPNRNLe-YJMbiZoKA==/109951163072509863.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>Qaijff</strong>
                            <span>
                                <font>愛を教えてくれた君へ &#8211; Qaijff</font>
                                <font><i></i></font>
                                <font><i></i>10<em>2</em></font>
                            </span>
                        </a>
                    </li>
				</ul>
            </div>
            <!--3magic-->
            <div class="mvList">
                <ul id="magic">
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/r4TK33y6f8cwlntVidXZbQ==/931286348726555.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>川井憲次</strong>
                            <span>
                                <font>群雄疾走 &#8211; 川井憲次</font>
                                <font><i></i></font>
                                <font><i></i>100<em>2</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/ivONokvElv9ZCzyrZp84FQ==/3297435373557125.jpg" class="attachment-220x125 wp-post-image" alt="" />                         
                            <strong>EGOIST</strong>
                            <span>
                                <font>Ghost of a smile &#8211; EGOIST</font>
                                <font><i></i></font>
                                <font><i></i>54<em>22</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/Q4Dg5QXwft213TBKMv26_A==/3276544653004159.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>大竹佑季</strong>
                            <span>
                                <font>樱子小姐的脚下埋着尸体 &#8211; 大竹佑季</font>
                                <font><i></i></font>
                                <font><i></i>8<em>26</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/84dpde0vkfsDAVsNNjulXg==/7906588115750467.jpg" class="attachment-220x125 wp-post-image" alt="" />                           
                            <strong>豚乙女</strong>
                            <span>
                                <font>非科学的表裏一体 &#8211; 豚乙女</font>
                                <font><i></i></font>
                                <font><i></i>10<em>2</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/b04i7LFbHLJkmkzwhwRLMA==/2343059278838229.jpg" class="attachment-220x125 wp-post-image" alt="" /> 
                            <strong>FELT</strong>
                            <span>
                                <font>You're the Shine &#8211; FELT</font>
                                <font><i></i></font>
                                <font><i></i>9<em>23</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/4BgAnUbCDFex3m4z-hWULA==/2509085534622060.jpg" class="attachment-220x125 wp-post-image" alt="" />                            
                            <strong>清浦夏実</strong>
                            <span>
                                <font>旅の途中 &#8211; 清浦夏実</font>
                                <font><i></i></font>
                                <font><i></i>90<em>8</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/3eyBH8RjxjXG-EqWShU1wg==/18887410742154555.jpg" class="attachment-220x125 wp-post-image" alt="" />                         
                            <strong>東山奈央</strong>
                            <span>
                                <font>夏祭り &#8211;東山奈央</font>
                                <font><i></i></font>
                                <font><i></i>5<em>29</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/KmPcFcxxg61d15R8yu5x_A==/18681802069425034.jpg" class="attachment-220x125 wp-post-image" alt="" />  
                            <strong>Nevve</strong>
                            <span>
                                <font>Sway &#8211; Nevve</font>
                                <font><i></i></font>
                                <font><i></i>8<em>28</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/xaX_RkkW0cT4f38k62N8yg==/3413983630702236.jpg" class="attachment-220x125 wp-post-image" alt="" />
                            <strong> Breathe Carolina</strong>
                            <span>
                                <font>Vanish &#8211;  Breathe Carolina</font>
                                <font><i></i></font>
                                <font><i></i>0<em>28</em></font>
                            </span>
                        </a>
                    </li>
					<li>
                        <a href="javascript:;" class="playIcon">
                            <img width="220" height="125" src="http://p1.music.126.net/foJM2P9nq8pXHnCZjcf75w==/19047939439716625.jpg" class="attachment-220x125 wp-post-image" alt="" />          
                            <strong>MEIDEN</strong>
                            <span>
                                <font>It's Over &#8211; MEIDEN</font>
                                <font><i></i></font>
                                <font><i></i>20<em>8</em></font>
                            </span>
                        </a>
                    </li>                  
                </ul>
            </div>
        </div>
    </div>
   

    <div class="songs_rcmd_title">
        <div class="rcmd_left_title rcmd_title">
            <span>Elegant</span>
            <a href="" class="more">/more</a>
        </div>
        <div class="rcmd_center_title rcmd_title">
            <span>Ethereal</span>
            <a href="" class="more">/more</a>
        </div>
        <div class="rcmd_right_title rcmd_title">
            <span>Silence</span>
            <a href="" class="more">/more</a>
        </div>
    </div>
    
    <div class="songs_rcmd" id="songs_rcmd">
        <div class="songs_rcmd_cont">
            <ul class="rcmd_left rcmd_cont" id="latest">
				<li>
                    <a href="" class="musicName"> 我不难过 &#8211; 孙燕姿</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">倾城 &#8211; 陈奕迅</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">尚好的青春 &#8211; 孙燕姿</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">远在咫尺 &#8211; 陈奕迅</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">最佳损友 &#8211;  陈奕迅</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">Thinking Out Loud &#8211; Ed Sheeran</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">Perfect Duet &#8211; Ed Sheeran</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">一生中最爱 &#8211; 谭咏麟</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">隐形人 &#8211; 孙燕姿</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
            </ul>
            <ul class="rcmd_center rcmd_cont" id="popular">
				<li>
                    <a href="javascript:;" class="musicName">Something Just Like This &#8211; The Chainsmokers / Coldplay</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">天黑黑 &#8211; 孙燕姿</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">遇见 &#8211; 孙燕姿</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">遇到 &#8211; 方雅贤</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">盛夏 &#8211; 黄珊珊</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">我怀念的 &#8211; 孙燕姿</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">慢慢喜欢你 &#8211; 莫文蔚</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">小跳蛙 &#8211; 青蛙</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
                <li>
                    <a href="javascript:;" class="musicName">忽然之间 &#8211; 莫文蔚</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
            </ul>
            <ul class="rcmd_right rcmd_cont" id="rank">
				<li>
                    <a href="javascript:;" class="musicName">あこがれ&#8211; ミツメ（Mitsume）</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
				<li>
                    <a href="javascript:;" class="musicName">爱着爱着就永远 &#8211; 田馥甄</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
				<li>
                    <a href="javascript:;" class="musicName">鸭子 &#8211; 苏慧伦</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
				<li>
                    <a href="javascript:;" class="musicName">等你下课  &#8211; 周杰伦</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
				<li>
                    <a href="javascript:;" class="musicName">告白气球&#8211; 周杰伦</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
				<li>
                    <a href="javascript:;" class="musicName">晴天 &#8211; 周杰伦</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
				<li>
                    <a href="javascript:;" class="musicName">当冬夜渐暖 &#8211; 孙燕姿</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
				<li>
                    <a href="javascript:;" class="musicName">我的爱 &#8211; 孙燕姿</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
				<li>
                    <a href="javascript:;" class="musicName">好久不见 &#8211; 金玟岐</a>
                    <a class="shareIcon" href="javascript:;"></a>
                    <a class="playIcon" href="javascript:;"></a>
                </li>
			</ul>
        </div>
    </div>

    <div class="omnibus hot_singer">
        <div class="omnibus_cont new_common">
            <div class="omnibus_title new_common_title">
                <span>A fantasy world</span>
                <a href="" class="more"></a>
            </div>
            <ul id="omnibus_list">
                <li class="post_big">
                    <a href="javascript:;">
                        <img src="/Chat/Video/images/ksoa.png" alt="" width="305" height="290">
                        <i></i>
                    </a>
                    <a href="javascript:;">The divine comedy as first love</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src="/Chat/Video/images/Deuxième dollars.jpg" alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="javascript:;">A new world</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src='/Chat/Video/images/fasd.png' alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">This is our dream</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src="/Chat/Video/images/ariko.png" alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">what feels most natural</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src='/Chat/Video/images/msoal.png' alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">I can appreciate that</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src='/Chat/Video/images/lise.png' alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">Tell myths about love</a>
                </li>
                <li class="post_small">
                    <a href="">
                        <img src="/Chat/Video/images/jisad.png" alt="" width="130" height="130">
                        <span></span>
                    </a>
                    <a href="">In a different world</a>
                </li>
            </ul>
        </div>
        <div class="hot_singer_cont new_common">
            <div class="hot_singer_title new_common_title">
                <span>Artist's soul</span>
                <a href="" class="more"></a>
            </div>
            <ul class="singer_list">
                <li>
                    <a href="" class="singerPhoto">
                        <img src=" /Chat/Video/images/18808245906449965.jpg" alt="" width="70" height="70"></a>
                    <a href="" class="singer">梶浦由记</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src="/Chat/Video/images/18619129906152259.jpg" alt="" width="70" height="70"></a>
                    <a href="" class="singer">花たん</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src=" /Chat/Video/images/19127104277052748.jpg" alt="" width="70" height="70"></a>
                    <a href="?p=363" class="singer">泽野弘之</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src=" /Chat/Video/images/19124905253592749.jpg" alt="" width="70" height="70"></a>
                    <a href="" class="singer">Sound Horizon</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src='/Chat/Video/images/109951163112362346.jpg' alt="" width="70" height="70"></a>
                    <a href="" class="singer">Aimer</a>
                </li>
                <li>
                    <a href="" class="singerPhoto">
                        <img src=" /Chat/Video/images/3283141725800255.jpg" alt="" width="70" height="70"></a>
                    <a href="" class="singer">れをる</a>
                </li>
                <div style="clear:both;"></div>
            </ul>
        </div>
    <div style="clear:both"></div></div>
</section>





<!-- 左侧播放器 开始-->
<div id="jp_container_N" class="jp-video jp-video-270p" role="application" aria-label="media player">
	<div class="jp-type-playlist">
		<div id="jquery_jplayer_N"class="jp-jplayer"></div>
		<div class="jp-gui">
			<div class="jp-video-play">
				<button class="jp-video-play-icon" role="button" tabindex="0">播放</button>
			</div>
			<div class="jp-interface">
				<div class="jp-progress">
					<div class="jp-seek-bar">
						<div class="jp-play-bar"></div>
					</div>
				</div>
				<div class="jp-current-time" role="timer" aria-label="time"></div>
				<div class="jp-duration" role="timer" aria-label="duration"></div>
				<div class="jp-controls-holder">
					<div class="jp-controls">
						<button class="jp-previous" role="button" tabindex="0">上一曲</button>
						<button class="jp-play" role="button" tabindex="0">播放</button>
						<button class="jp-next" role="button" tabindex="0">下一曲</button>
						<button class="jp-stop" role="button" tabindex="0">暂停</button>
					</div>
					<div class="jp-volume-controls">
						<button class="jp-mute" role="button" tabindex="0">静音</button>
						<button class="jp-volume-max" role="button" tabindex="0">最大音量</button>
						<div class="jp-volume-bar">
							<div class="jp-volume-bar-value"></div>
						</div>
					</div>
					<div class="jp-toggles">
						<button class="jp-repeat" role="button" tabindex="0">重复</button>
						<button class="jp-shuffle" role="button" tabindex="0">随机</button>
						<!--<button class="jp-full-screen" role="button" tabindex="0">全屏</button>-->
					</div>
				</div>
				<div class="jp-details">
					<div class="jp-title" aria-label="title"></div>
				</div>
			</div>
		</div>
		<div class="jp-playlist">
        	<div class="jp-playlist-box">
                <ul>
                    <!-- 该方法使用无序列表displayplaylist()播放列表 -->
                    <li></li>
                </ul>
            </div>
		</div>
		<div class="jp-no-solution">
			<span>升级需要</span>
			您浏览器赞不支持播放，请更新版本
            <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash插件</a>.
		</div>
	</div>
    <!--歌曲列表滚动条-->
    <div class="scrollBar">
    	<div class="bar"></div>
    </div>
    <!--播放器展开隐藏按钮-->
    <button type="button" class="folded_bt" title="点击收缩" id="btnfold">
    	<span></span>
   	</button>
    <div id="listRemove"></div><!--移除全部歌曲按钮--> 
    <div id="listClose"></div><!--歌曲列表展开收缩按钮-->
</div>
<!-- 左侧播放器 结束-->

<!--底部 开始 -->
<div class="footer" id="footer">
	<div class="footer_cont">
    	<div class="footer_cont_left">
        	<p>
            	<a href="">About me</a>|<a href="">History</a>|<a href="">Cartoon</a>|
                <a href="">Ad service</a>|<a href="">Movie link</a>|<a href="">Help</a>
            </p>
            <p>
            	Copyright © JiangNanGong  All Rights Reserved
            </p>
        </div>
        <div class="footer_cont_right">
        	<span>Other Links</span>
        	<ul>
                <li><a href=""><span></span></a></li>
                <li><a href=""><span></span></a></li>
                <li>
					<a href="" class="twoCode">
						<span></span>
						
					</a>
				</li>
                <li><a href=""><span></span></a></li>
                <li><a href=""><span></span></a></li>
            </ul>
        </div>
        <div id="toTop"></div>
    </div>

</div>
<!--底部 结束 -->
<script type="text/javascript" src="/Chat/Video/js/jquery.js"></script>
<script type="text/javascript" src="/Chat/Video/js/index.js"></script>
<!--播放器js-->
<script type="text/javascript" src="/Chat/Video/js/player.js"></script>
<script type="text/javascript" src="/Chat/Video/js/playlist.js"></script>
<script type="text/javascript" src="/Chat/Video/js/player_database.js"></script>	
<!--播放器js-->
<!-- 底部模板调用 结束 -->
</html>