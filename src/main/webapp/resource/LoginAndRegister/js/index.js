/**
 * Created by Administrator on 2017/5/11.
 */
//顶部导航
var navarr = ['20px', '130px', '240px', '350px', '460px']
$('.headr-nav li').mouseover(function() {
	$('.headr-nav li a').eq($(this).index('li')).css('color', '#4AB344')
	$('.spbottom:eq(0)').css('left', navarr[$(this).index()])
}).mouseout(function() {
	$('.headr-nav li a').eq($(this).index('li')).css('color', '')
	$('.spbottom:eq(0)').css('left', '20px')
})

$('.headr-right:eq(0)').mouseover(function() {
	$(this).css('overflow', 'visible')
}).mouseout(function() {
	$(this).css('overflow', 'hidden')
})
//顶部导航结束
//果园推荐开始
$('.rcr-top').mousemove(function() {
	$('.rcr-top').eq($(this).index('.rcr-top')).css('margin-left', '0')

}).mouseout(function() {
	$('.rcr-top').eq($(this).index('.rcr-top')).css('margin-left', '10px')

})
//果园推荐结束
//每日新品特卖轮播
var banner = document.getElementsByClassName('banner_1')[0]
var site = ['0px', '-1424px']
var bon = document.getElementsByClassName('banner-bottom')[0]
var ali = bon.getElementsByTagName('li')
var len = site.length
var num = 0
for (i = 0; i < len; i++) {
	bon.innerHTML += '<li>' + (i + 1) + '</li>'
}
ali[0].className = 'active'
for (i = 0; i < len; i++) {
	ali[i].index = i
	ali[i].onmouseover = function() {
		num = this.index
		picshow()
	}
}

function picshow() {
	for (j = 0; j < len; j++) {
		ali[j].className = ''
	}
	ali[num].className = 'active'
	banner.style.marginLeft = site[num]
}
var time = null

function pp() {
	time = setInterval(function() {
		num++
		if (num >= len) {

			num = 0
		}
		picshow()
	}, 5000)
}
pp()
banner.onmouseover = function() {
	clearInterval(time)
}
banner.onmouseout = function() {
	clearInterval(time)
	pp()
}
//每日新品特卖轮播结束
$('.nw-b').mousemove(function() {
	$('.nw-b img').eq($(this).index('.nw-b')).css('margin-left', '-8px')

}).mouseout(function() {
	$('.nw-b img').eq($(this).index('.nw-b')).css('margin-left', '0px')

})

// $(".txtMarquee-top").slide({
// 	mainCell: ".bd ul",
// 	autoPlay: true,
// 	effect: "topMarquee",
// 	vis: 5,
// 	interTime: 50,
// 	trigger: "click"
// });
// $(".slideBox").slide({
// 	mainCell: ".bd ul",
// 	autoPlay: true,
// 	trigger: "click"
// });





// }

function moveZx() {
	var margeTop = 0;
	var zxStop = false;
	var timer = setInterval(function() {
		if (zxStop) {
			return;
		}
		$(".infoList").children("li").first().animate({
			"margin-top": margeTop--
		}, 0, function() {
			var $first = $(this);
			if (!$first.is(":animated")) {
				if ((-margeTop) > $first.height()) {
					$first.css("margin-top", 0).appendTo($(".infoList"));
					margeTop = 0;

				}
			}
		})

	}, 90);

	$(".infoList").mouseover(function() {
		zxStop = true;

	}).mouseout(function() {
		zxStop = false;
	})

}
moveZx();





// <!--这边添加的-->



function changeImg(){
	var numIndex = 0;
	var imgStop = false;
	
	// 定位
	var $imgLi = $(".slide_box").children("li");
	var $numLi = $(".num").children("li");
	
	// 鼠标移动到轮播图片对应的数字序号切换对应的图片
	$numLi.mouseover(function(){
		imgStop = true;
		numIndex = $numLi.index($(this));
		$imgLi.eq(numIndex).fadeIn();
		$imgLi.eq(numIndex).siblings().fadeOut();
		$(this).addClass("active");
		$(this).siblings().removeClass("active");
	}).mouseout(function(){
		imgStop = false;
	});
	
	// 轮播开始
	setInterval(function(){
		if(imgStop){
			return;
		}
		
		// 默认从轮播序号1开始
		numIndex++;
		
		// 如果轮播到最后一个图片，从头开始
		if(numIndex >= $imgLi.length){
			numIndex = 0;
		}
		
		// 开始轮播处理
		$imgLi.eq(numIndex).stop(true,true).fadeIn().siblings().fadeOut();
		$numLi.eq(numIndex).stop(true,true).addClass("active").siblings().removeClass("active");
	}, 1000);
}
// 页面加载后，立刻开始轮播
changeImg();
