
		$(function(){
			//鼠标移入事件
			$(".in-nav li:eq(3)").mouseover(function(){
				$("#shopping").show();
			})
			
			//鼠标移出事件
			$(".in-nav li:eq(3)").mouseout(function(){
				$("#shopping").hide();
			})
			
			$(".in-nav a").mouseover(function(){
				$(this).css("color","blue")
			})
			$(".in-nav a").mouseout(function(){
				$(this).css("color","grey");
			})
		})
