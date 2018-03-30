// MP3播放器及歌曲库js


	var myPlaylist = new jPlayerPlaylist({
		jPlayer: "#jquery_jplayer_N",
		cssSelectorAncestor: "#jp_container_N"
	},
     [
		 { title: "Ellens Gesang III D839", artist: "Geoffrey Parsons", mp3:"http://music.163.com/song/media/outer/url?id=16691428.mp3  ", poster: "http://p1.music.126.net/wAIlwR4SxuZg_ZMwgmSYcg==/3386495814257726.jpg?param=130y130"},
		 { title: "默", artist: "那英", mp3:"http://music.163.com/song/media/outer/url?id=31473269.mp3 ", poster: "http://p1.music.126.net/OCGt5ln0lPPtPbVJ3VEKtA==/109951163020570422.jpg?param=130y130"},
		 { title: "Fire", artist: "Said The Sky", mp3:"http://music.163.com/song/media/outer/url?id=435289279.mp3", poster: "http://p1.music.126.net/tg2zke_mrqwuOPlEIEUjGg==/18294773975127592.jpg?param=130y130"}
	 ], 
		 		    
		{playlistOptions:{enableRemoveControls: true},
		swfPath: "js/",
		supplied: "webmv, ogv, m4v, oga, mp3",
		useStateClassSkin: true,
		autoBlur: false,
		smoothPlayBar: true,
		keyEnabled: true,
		audioFullScreen: true
	});
	

	//past
	var latest=[
		{ title: "我不难过", artist: "孙燕姿", mp3: "http://music.163.com/song/media/outer/url?id=287398.mp3", poster:"http://p1.music.126.net/cSMnRGZQDuSNmBLCkmM_Qw==/935684395237660.jpg?param=130y130"},
		{ title: "倾城", artist: "陈奕迅", mp3: "http://music.163.com/song/media/outer/url?id=27867449.mp3 ", poster:"http://p1.music.126.net/CPANNvbRJVo4mNF-H63BsQ==/1339205162683633.jpg?param=34y34"},
		{ title: "尚好的青春", artist: "孙燕姿", mp3: "http://music.163.com/song/media/outer/url?id=28283346.mp3", poster:"http://p1.music.126.net/IpXZzvX4xgseWGfZhXHCyQ==/109951163115291601.jpg?param=130y130"},
		{ title: "远在咫尺", artist: "陈奕迅", mp3: "http://music.163.com/song/media/outer/url?id=27483206.mp3", poster:"http://p1.music.126.net/N31NIwck__EVJ3383hzxmg==/3389794350701533.jpg?param=50y50"},
		{ title: "最佳损友", artist: "陈奕迅(Live)", mp3: "http://music.163.com/song/media/outer/url?id=65851.mp3", poster:"http://p1.music.126.net/LE6HV_Y5-HXFfdXKGhJ94Q==/109951163104933982.jpg?param=130y130"},
		{ title: "Thinking Out Loud", artist: "Ed Sheeran", mp3: "http://music.163.com/song/media/outer/url?id=28680438.mp3", poster:"http://p1.music.126.net/coUnPtrHg0zUozRCwYOxog==/6051711999665662.jpg?param=130y130"},
		{ title: "Perfect Duet", artist: "Ed Sheeran / Beyoncé", mp3: "http://music.163.com/song/media/outer/url?id=521417778.mp3", poster:"http://p1.music.126.net/P3HBxF70iCDMi_fppXLdKQ==/109951163073973956.jpg?param=130y130"},
		{ title: "一生中最爱", artist: "谭咏麟", mp3: "http://music.163.com/song/media/outer/url?id=153784.mp3", poster:"http://p1.music.126.net/EDe8WuEF_RbxugBQJcofXQ==/41781441856503.jpg?param=34y34"},
		{ title: "隐形人", artist: "孙燕姿", mp3: "http://music.163.com/song/media/outer/url?id=287031.mp3", poster:"http://p1.music.126.net/ZpcOx5dbNTRK94vSIM20PQ==/768558627827568.jpg?param=130y130"}
	];

	//now
	var popular=[
		{ title: "Something Just Like This", artist: "The Chainsmokers / Coldplay", mp3: "http://music.163.com/song/media/outer/url?id=461347998.mp3", poster:"http://p1.music.126.net/ggnyubDdMxrhpqYvpZbhEQ==/3302932937412681.jpg?param=130y130"},
		{ title: "天黑黑", artist: "孙燕姿", mp3: "http://music.163.com/song/media/outer/url?id=287749.mp3", poster:"http://p1.music.126.net/p_5BNWuwtBJ_Fl5gClx5Pg==/101155069756398.jpg?param=130y130"},
		{ title: "遇见", artist: "孙燕姿", mp3: "http://music.163.com/song/media/outer/url?id=287035.mp3", poster:"http://p1.music.126.net/ZpcOx5dbNTRK94vSIM20PQ==/768558627827568.jpg?param=130y130"},
		{ title: "遇到", artist: "方雅贤", mp3: "http://music.163.com/song/media/outer/url?id=4875075.mp3", poster: "http://p1.music.126.net/3n01o8lnrbQfopy5PkpppA==/18877515137439308.jpg?param=130y130"},
		{ title: "盛夏", artist: "黄珊珊", mp3: "http://music.163.com/song/media/outer/url?id=498555812.mp3", poster:"http://p1.music.126.net/s6cIlTKigpAwexhOARLnXA==/18585045046334479.jpg?param=130y130"},
		{ title: "我怀念的", artist: "孙燕姿", mp3: "http://music.163.com/song/media/outer/url?id=287063.mp3", poster:"http://p1.music.126.net/PehnaQ-BaAXeQg1d5s7leA==/6635552673699715.jpg?param=130y130"},
		{ title: "慢慢喜欢你", artist: "莫文蔚", mp3: "http://music.163.com/song/media/outer/url?id=541687281.mp3", poster:"http://p1.music.126.net/XqNiBR_6gPXXq58vW2dD8g==/109951163169448520.jpg?param=130y130"},
		{ title: "小跳蛙", artist: "青蛙", mp3: "http://music.163.com/song/media/outer/url?id=371362.mp3", poster:"http://p1.music.126.net/9xK60ID8ozN56lrjZqpAVQ==/105553116282321.jpg?param=130y130"},
		{ title: "忽然之间", artist: "莫文蔚", mp3: "http://music.163.com/song/media/outer/url?id=27937466.mp3", poster:"http://p1.music.126.net/iNcrt344tK6tME6tCbcbTw==/5818615534203000.jpg?param=130y130"}
	];

	//future
	var rank=[
		{ title: "あこがれ", artist: "ミツメ（Mitsume）", mp3: "http://music.163.com/song/media/outer/url?id=416554763.mp3", poster:"http://p1.music.126.net/9rqPpuZx4YAZw4Iu_FbSow==/1386484174142945.jpg?param=130y130"},
		{ title: "爱着爱着就永远", artist: "田馥甄", mp3: "http://music.163.com/song/media/outer/url?id=28038055.mp3", poster:"http://p1.music.126.net/egxJ0te6WKFRcsLwP0T8zw==/109951163188533434.jpg?param=130y130"},
		{ title: "鸭子", artist: "苏慧伦", mp3: "http://music.163.com/song/media/outer/url?id=288307.mp3", poster:"http://p1.music.126.net/EtsemDE-uMLTIikA-JqKfQ==/24189255827917.jpg?param=130y130"},
		{ title: "等你下课 ", artist: "周杰伦", mp3: "http://music.163.com/song/media/outer/url?id=531051217.mp3", poster:"http://p1.music.126.net/A8qicH14toObbLpPMiKmBw==/109951163110962030.jpg?param=130y130"},
		{ title: "告白气球", artist: "周杰伦", mp3: "http://music.163.com/song/media/outer/url?id=418603077.mp3", poster:"http://p1.music.126.net/cUTk0ewrQtYGP2YpPZoUng==/3265549553028224.jpg?param=130y130"},
		{ title: "晴天", artist: "周杰伦", mp3: "http://music.163.com/song/media/outer/url?id=186016.mp3", poster:"http://p1.music.126.net/yjVbsgfNeF2h7fIvnxuZDQ==/18894007811887644.jpg?param=130y130"},
		{ title: "当冬夜渐暖", artist: "孙燕姿", mp3: "http://music.163.com/song/media/outer/url?id=286959.mp3", poster:"http://p1.music.126.net/CEInoAbIoZwnKfvcrY7VkQ==/51677046506484.jpg?param=130y130"},
		{ title: "我的爱", artist: "孙燕姿", mp3: "http://music.163.com/song/media/outer/url?id=287274.mp3", poster:"http://p1.music.126.net/XoB6wW14UoqyEkmimOTL5g==/109951163115293075.jpg?param=130y130"},
		{ title: "好久不见", artist: "金玟岐", mp3: "http://music.163.com/song/media/outer/url?id=29095462.mp3", poster:"http://p1.music.126.net/YZ4EmG8r5T6XPj_1WBue-A==/3295236350128132.jpg?param=130y130"}
	];

   // oline song/dream/
   var main =[
	   { title: "手写着从前", artist: "澤野弘之", mp3: "http://music.163.com/song/media/outer/url?id=448706025.mp3 ", poster: "http://p1.music.126.net/wME0oX7VY7fEkKvbXgzlrA==/19122706230471650.jpg?param=130y130" },
	   { title: "God of ink", artist: "澤野弘之", mp3: "http://music.163.com/song/media/outer/url?id=484056491.mp3", poster: "http://p1.music.126.net/wME0oX7VY7fEkKvbXgzlrA==/19122706230471650.jpg?param=130y130" },
	   { title: "white silence (album version)", artist: "TK from 凛として時雨", mp3: "http://music.163.com/song/media/outer/url?id=769672.mp3", poster: "http://p1.music.126.net/OX-yCGzOUHbhqiKK9Xx4Vg==/4442026976217692.jpg?param=130y130" },
	   { title: "结び", artist: "饭碗的彼岸", mp3: "http://music.163.com/song/media/outer/url?id=445198872.mp3", poster: "http://p1.music.126.net/dlC4rAiDvq_uUi2fpnxKMA==/109951162819138078.jpg?param=130y130" },
	   { title: "VV - ALK", artist: "Tielle", mp3: "http://music.163.com/song/media/outer/url?id=507116416.mp3", poster: "http://p1.music.126.net/WStPGvMUlDC89Wus9813zA==/109951163014870789.jpg?param=130y130" },
	   { title: "M41+42", artist: "梶浦由記", mp3: "http://music.163.com/song/media/outer/url?id=591021.mp3", poster: "http://p1.music.126.net/lf9G9OQf_ouA_FuPZjm1HA==/890604418498843.jpg?param=130y130" },
	   { title: "偏爱", artist: "张芸京", mp3: "http://music.163.com/song/media/outer/url?id=86369.mp3", poster: "http://p1.music.126.net/2-_sPmCBnN6VfwFmONRy2Q==/46179488378975.jpg?param=130y130" },
	   { title: "算什么男人", artist: "周杰伦", mp3: "http://music.163.com/song/media/outer/url?id=29818120.mp3", poster: "http://p1.music.126.net/unW9CQcqjzh8BYjsVqosWw==/18874216602702134.jpg?param=130y130" },
	   { title: "兰若词", artist: "刘亦菲", mp3: "http://music.163.com/song/media/outer/url?id=255739.mp3", poster: "http://p1.music.126.net/YIhF9kpKMx_wBKQFN-DwTw==/81363860472987.jpg?param=130y130" },
	   { title: "open", artist: "miu-clips", mp3: "http://music.163.com/song/media/outer/url?id=618338.mp3", poster: "http://p1.music.126.net/fJ4Y4PN_h0Mg3ByQ2yfL9g==/838927371993316.jpg?param=130y130" }
	   ];
   var spirit =[
	   { title: "M19+20", artist: "梶浦由記", mp3: "http://music.163.com/song/media/outer/url?id=591753.mp3 ", poster: "http://p1.music.126.net/lW4YKD6cMgm32nI66CzWVg==/5702067301704441.jpg?param=130y130" },
	   { title: "Sis puella magica!", artist: "梶浦由記", mp3: "http://music.163.com/song/media/outer/url?id=496902072.mp3", poster: "http://p1.music.126.net/tFTRt1H87rReNTyO1K9IDQ==/18498183627713149.jpg?param=130y130" },
	   { title: "月は优しく (月)", artist: "梶浦由記", mp3: "http://music.163.com/song/media/outer/url?id=590623.mp3", poster: "http://p1.music.126.net/7xaV2qB-T1d9m8b1XZC6tQ==/725677674344222.jpg?param=130y130" },
	   { title: "Euterpe エウテルペ ", artist: "染音若蔡", mp3: "http://music.163.com/song/media/outer/url?id=452654214.mp3", poster: "http://p1.music.126.net/Iqckrd2sOB1ztqrSOw4XzA==/109951162841140691.jpg?param=130y130" },
	   { title: "幻光", artist: "杨秉音", mp3: "http://music.163.com/song/media/outer/url?id=526989692.mp3", poster: "http://p1.music.126.net/4xHOkSVWH-n6p5pB3Jf0yQ==/109951162922204274.jpg" },
	   { title: "世界の約束", artist: "神罗Shinra", mp3: "http://music.163.com/song/media/outer/url?id=429460870.mp3", poster: "http://p1.music.126.net/rkJSVKRZkfLXOoVwXtiB4w==/18283778858733705.jpg?param=130y130" },
	   { title: "Cave OF Mind", artist: "久石譲", mp3: "http://music.163.com/song/media/outer/url?id=28457572.mp3", poster: "http://p1.music.126.net/HdmtedPRZEEBduHcmUnk3w==/853221023209311.jpg?param=130y130" },
	   { title: "幽灵公主", artist: "K. Williams", mp3: "http://qzone.haoduoge.com/music3/2015-01-26/1422203098.mp3", poster: "http://p1.music.126.net/GNKtRK8w7edPw3jAsavL2A==/5980243743832365.jpg?param=130y130" },
	   { title: "心之逆鳞", artist: "魏小涵", mp3: "http://music.163.com/song/media/outer/url?id=408280658.mp3", poster: "http://p1.music.126.net/k_WRxDY1qQ4ztB5uFFrvoA==/17907745881679448.jpg?param=130y130" },
	   { title: "愛を教えてくれた君へ", artist: "Qaijff", mp3: "http://music.163.com/song/media/outer/url?id=521416051.mp3", poster: "http://p1.music.126.net/-c3qURPNRNLe-YJMbiZoKA==/109951163072509863.jpg?param=130y130" }
	   ];
   var magic =[
	   { title: "群雄疾走", artist: "川井憲次", mp3: "http://music.163.com/song/media/outer/url?id=448153.mp3", poster: "http://p1.music.126.net/r4TK33y6f8cwlntVidXZbQ==/931286348726555.jpg?param=130y130" },
	   { title: "Ghost of a smile", artist: "EGOIST", mp3: "http://music.163.com/song/media/outer/url?id=35955908.mp3", poster: "http://p1.music.126.net/ivONokvElv9ZCzyrZp84FQ==/3297435373557125.jpg?param=130y130" },
	   { title: "樱子小姐的脚下埋着尸体", artist: "大竹佑季", mp3: "http://music.163.com/song/media/outer/url?id=36271375.mp3", poster:"http://p1.music.126.net/Q4Dg5QXwft213TBKMv26_A==/3276544653004159.jpg?param=130y130" },
	   { title: "非科学的表裏一体", artist: "豚乙女", mp3: "http://music.163.com/song/media/outer/url?id=30870899.mp3", poster: "http://p1.music.126.net/84dpde0vkfsDAVsNNjulXg==/7906588115750467.jpg?param=130y130" },
	   { title: "You're the Shine", artist: "：FELT", mp3: "http://music.163.com/song/media/outer/url?id=26260757.mp3", poster: "http://p1.music.126.net/b04i7LFbHLJkmkzwhwRLMA==/2343059278838229.jpg?param=130y130" },
	   { title: "旅の途中", artist: "清浦夏実", mp3: "http://music.163.com/song/media/outer/url?id=26220167.mp3", poster: "http://p1.music.126.net/4BgAnUbCDFex3m4z-hWULA==/2509085534622060.jpg?param=130y130" },
	   { title: "夏祭り", artist: "東山奈央", mp3: "http://music.163.com/song/media/outer/url?id=488388729.mp3", poster: "http://p1.music.126.net/3eyBH8RjxjXG-EqWShU1wg==/18887410742154555.jpg?param=130y130" },
	   { title: "Sway", artist: "Nevve", mp3: "http://music.163.com/song/media/outer/url?id=475073464.mp3", poster: "http://p1.music.126.net/KmPcFcxxg61d15R8yu5x_A==/18681802069425034.jpg?param=130y130" },
	   { title: "Vanish", artist: " Breathe Carolina", mp3: "http://music.163.com/song/media/outer/url?id=427542077.mp3", poster: "http://p1.music.126.net/xaX_RkkW0cT4f38k62N8yg==/3413983630702236.jpg?param=130y130" },
	   { title: "It's Over", artist: "MEIDEN", mp3: "http://music.163.com/song/media/outer/url?id=477933011.mp3", poster: "http://p1.music.126.net/foJM2P9nq8pXHnCZjcf75w==/19047939439716625.jpg?param=130y130" }
	   ];

	//添加播放歌曲

	$("#latest li").find("a.playIcon").click(function() {
		var k=$(this).parent("li").index();
		myPlaylist.add({ 
			title:latest[k].title, artist:latest[k].artist,
			//free:true,
			mp3:latest[k].mp3,
			//oga:"",
			poster:latest[k].poster
		});
		myPlaylist.play(-1);
	});

	$("#popular li").find("a.playIcon").click(function() {
		var k=$(this).parent("li").index();
		myPlaylist.add({ 
			title:popular[k].title, artist:popular[k].artist,
			//free:true,
			mp3:popular[k].mp3,
			//oga:"",
			poster:popular[k].poster
		});
		myPlaylist.play(-1);
	});

	$("#rank li").find("a.playIcon").click(function() {
		var k=$(this).parent("li").index();
		myPlaylist.add({ 
			title:rank[k].title, artist:rank[k].artist,
			//free:true,
			mp3:rank[k].mp3,
			//oga:"",
			poster:rank[k].poster
		});
		myPlaylist.play(-1);
	});
	
$("#main li").find("a.playIcon").click(function () {
	var k = $(this).parent("li").index();
	myPlaylist.add({
		title: main[k].title, artist: main[k].artist,
		//free:true,
		mp3: main[k].mp3,
		//oga:"",
		poster: main[k].poster
	});
	myPlaylist.play(-1);
});
	
$("#spirit li").find("a.playIcon").click(function () {
	var k = $(this).parent("li").index();
	myPlaylist.add({
		title: spirit[k].title,
		artist: spirit[k].artist,
		//free:true,
		mp3: spirit[k].mp3,
		//oga:"",
		poster: spirit[k].poster
	});
	myPlaylist.play(-1);
});
$("#magic li").find("a.playIcon").click(function () {
	var m = $(this).parent("li").index();
	myPlaylist.add({
		title: magic[m].title,
		artist: magic[m].artist,
		//free:true,
		mp3: magic[m].mp3,
		//oga:"",
		poster: magic[m].poster
	});
	myPlaylist.play(-1);
});
	//添加歌曲结束


	//移除
	$("#playlist-remove").click(function() {
		myPlaylist.remove();		//（0 1 2 ... -2 -1）
	});
	
	$("#listRemove").click(function() {
		myPlaylist.remove();
	});

	// 上一曲、下一曲

	$("#playlist-next").click(function() {
		myPlaylist.next();
	});
	$("#playlist-previous").click(function() {
		myPlaylist.previous();
	});

	// 播放
	$("#playlist-play").click(function() {
		myPlaylist.play();
	});

	$("#playlist-play--2").click(function() {
		myPlaylist.play(-2);
	});
	$("#playlist-play--1").click(function() {
		myPlaylist.play(-1);
	});
	$("#playlist-play-0").click(function() {
		myPlaylist.play(0);
	});
	$("#playlist-play-1").click(function() {
		myPlaylist.play(1);
	});
	$("#playlist-play-2").click(function() {
		myPlaylist.play(2);
	});

	// 暂停

	$("#playlist-pause").click(function() {
		myPlaylist.pause();
	});



	//是否自动播放

	$("#playlist-option-autoPlay-true").click(function() {
		myPlaylist.option("autoPlay", true);
	});
	$("#playlist-option-autoPlay-false").click(function() {
		myPlaylist.option("autoPlay", false);
	});




	//播放器列表滚动条js------------------------------------------------------------------------------------------------
	var $bar=$(".bar");
	var $scrollBar=$(".scrollBar");
	var $maxH = $scrollBar.innerHeight() - $bar.outerHeight();
	var $ul=$(".jp-playlist ul");
	var $li=$(".jp-playlist ul li");
	var disY=0; 
	var iScale=0;
	var iSpeed = 0;
	
	$ul.height(1000);		//设置ul的高度
	
	$bar.mousedown(function (event){
		var event = event || window.event;
		disY = event.clientY - $(this).position().top;                
		$(document).bind("mousemove",function (event){
				var event = event || window.event;
				var iH = event.clientY - disY;                        
				iH <= 0 && (iH = 0);
				iH >= $maxH && (iH = $maxH);
				$bar.css({top : iH + "px"});
				iScale = - iH/$maxH;
				$ul.css({top:iScale*($ul.height()-$(".jp-playlist-box").height())+"px"});	
				return false;
		});                
		$(document).bind("mouseup",function (){		
				$(document).unbind("mousemove");
				$(document).unbind("mouseup");
		});
		return false;
	});
	
	 //当鼠标移入，监听事件
	$(".jp-playlist-box").mouseover(function(){
			//鼠标滚轮
			addHandler(this, "mousewheel", mouseWheel);//IE
			addHandler(this, "DOMMouseScroll", mouseWheel);//标准
			return false;			
	});
	//绑定事件重写兼容
	 function addHandler(element, type, handler){
			return element.addEventListener ? element.addEventListener(type, handler, false) :
			element.attachEvent("on" + type, handler, false)
	}
	 //鼠标滚轮事件
	function mouseWheel(event){
		var event = event || window.event;
		if(event.wheelDelta) {//IE
				iSpeed = event.wheelDelta > 0 ? -3 : 3;
		}else if(event.detail) {//火孤
				iSpeed = event.detail < 0 ? -3 : 3;
		}
		move();
		
		//FF,绑定事件，阻止默认事件  
		if (event.preventDefault) {  
			event.preventDefault();  
		} 	
	} ;
	//滚轮 要执行的
	function move(){
		var iH=$bar.position().top;
		iH=iH+iSpeed;
		iH <= 0 && (iH = 0);
		iH >= $maxH && (iH = $maxH);
		$bar.css({top:iH+"px"});
		iScale = - iH/$maxH;
		$ul.css({top:iScale*($ul.height()-$(".jp-playlist-box").height())+"px"});
		return false;
	};
	//播放器列表滚动条js 结束------------------------------------------------
	
	
	
	//音乐播放器 收缩、展开----------------------------------------------
	var fold=true;//标识
	
	//页面加载时，播放器运动出来，延迟2秒，运动回去
	$(".jp-video").animate({left:0},"slow",function(){
		slideOut($(this));		
	}).delay(2000).animate({left:"-480px"},350,function(){
		slideIn($(this));	
	});
	
	//点击按钮运动出来，或运动回去
	$("#btnfold").mouseover(function(){
		if(fold){
			$(".jp-video").animate({left:"-480px"},350,function(){	
				slideIn($(this));
			});	
		}else{
			$(".jp-video").animate({left:0},350,function(){
				slideOut($(this));
			});	
		}
	});
	//封装按钮背景切换1
	function slideOut(obj){
		$("#btnfold").attr({"title":"点击收缩"});
		obj.find("span").css({"transform":"rotate(180deg)"});
		obj.find("span").css({"MozTransform":"rotate(180deg) translateX(2px)"});
		obj.find("span").css({"WebkitTransform":"rotate(180deg)"});
		fold=true;		
	};
	//封装按钮背景切换2
	function slideIn(obj){
		$("#btnfold").attr({"title":"点击展开"});	
		obj.find("span").css({"transform":"rotate(0deg)"});
		obj.find("span").css({"MozTransform":"rotate(0deg) translateX(-2px)"});
		obj.find("span").css({"WebkitTransform":"rotate(0deg)"});
		fold=false;	
	};
	
	//歌曲列表展开、收缩---------------------------------------------------
	var iOpen=false;
	$("#listClose").click(function(){
		if(iOpen){
			$(".jp-playlist-box").animate({height:0},100);
			$("#btnfold").css({top:"5px"});
			$("#listRemove").css({display:"none"});
			$(".scrollBar").css({display:"none"});
			$(".jp-video").animate({height:"94px",bottom:"20px"},100);
			iOpen=false;
		}else{
			$(".jp-playlist-box").animate({height:"80px"},100);
			$("#btnfold").css({top:"52px"});
			$("#listRemove").css({display:"block"});
			$(".scrollBar").css({display:"block"});
			$(".jp-video").animate({height:"175px",bottom:"20px"},100);
			iOpen=true;
		}
	});
	
	
	
	
	
	
	
	
	
	
	
	
