<%--
  Created by IntelliJ IDEA.
  User: 张飞逸
  Date: 2020/9/16
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Title</title>
    <link href="../../resource/LoginAndRegister/css/zzh_css/touch.css"rel="stylesheet">
    <link href="../../resource/LoginAndRegister/css/zzh_css/share.css"rel="stylesheet">
    <link href="../../resource/LoginAndRegister/css/zzh_css/login.css" rel="stylesheet">
    <link href="../../resource/LoginAndRegister/css/zzh_css/login1.css" rel="stylesheet">
    <link href="../../resource/LoginAndRegister/css/zzh_css/reset.css" rel="stylesheet">
    <link href="../../resource/LoginAndRegister/css/zzh_css/swiper.min.css" rel="stylesheet">
</head>
<body>
<!--顶部导航-->
<div class="nav">
    <div class="in-nav">
        <li id="name"><a href="#">收藏本站&nbsp;&nbsp;&nbsp;|</a> </li>
        <li id="name"><a href="#">我的资料&nbsp;&nbsp;&nbsp;|</a> </li>
        <li id="name"><a href="#">我的订单&nbsp;&nbsp;&nbsp;|</a> </li>
        <li id="name"><a href="#" >购物车</a></li>
        <div id="shopping">
            <p>您的购物车中暂时没有任何产品</p>
            <input type="button" id="shop" value="去购物车结算" />
        </div>
    </div>
    <div class="inin-nav">
        <input type="button" id="button" value="登录" />
        <input type="button" id="button" value="注册" style="background-color:#45A2FF;color: white;border: none;"/>
    </div>

</div>

<div id="dingbu">
    <div id="dingbu-img">
        <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/zzh_img/img/logo.jpg" >
    </div>
    <div id="dingbu-li">
        <ul>
            <li><a href="index.html">首页</a> </li>
            <li><a href="hot.html">蔬果热卖</a> </li>
            <li><a href="produ.html">全部产品</a> </li>
            <li><a href="consult.html" >最新资讯</a></li>
            <li><a href="userInfo.html" >个人中心</a></li>
        </ul>
    </div>

</div>
<!--顶部导航结束-->
<!--banner图片-->
<div class="her-banner"></div>
<!--banner图片结束-->
<!--建议开始-->
<!--<section id="sec_body">-->
<div  class="swiper-container" style="border: 1px ;display: inline-block;width: 600px;height: 300px;position: absolute;top: 180px;right:659px;">
    <div class="swiper-wrapper">
        <div class="swiper-slide" style="background: url(../../resource/LoginAndRegister/img/zzh_img/img/slide.jpg) no-repeat"></div>
        <div class="swiper-slide" style="background: url(../../resource/LoginAndRegister/img/zzh_img/img/slide02.jpg) no-repeat">Slide 2</div>
        <div class="swiper-slide" style="background: url(../../resource/LoginAndRegister/img/zzh_img/img/slide03.jpg) no-repeat">Slide 3</div>
    </div>
    <!-- 如果需要分页器 -->
    <div class="swiper-pagination"></div>

    <!-- 如果需要导航按钮 -->
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>

    <!-- 如果需要滚动条 -->
    <!-- <div class="swiper-scrollbar"></div>-->
</div>

<div class="fl form-box" style="position: relative;left: 36%">
    <div class="tab">
        <h2 class="active">账号登录</h2>
        <h2 >动态登录</h2>
    </div>
    <form class="tab-form" action="login.html" method="post" autocomplete="off" id="form1">
        <div class="form-group marb20 " style="margin-bottom: 0px">
            <label class="userHead" for="name" style="margin-left: 3px;
	display: inline-block;
	height: 24px;
	width: 24px;
	vertical-align: middle;
	background: url(${pageContext.request.contextPath}/resource/LoginAndRegister/img/zzh_img/img/userHead.png) no-repeat;"></label>
            <input name="userName" id="account_l" type="text" placeholder="用户名" required pattern="^(\w){2,10}$"/>
        </div>
        <div class="d1" style=" width: 280px;height: 12px;line-height: 10px; border: 1px ;display: inline-block;"><span class="ss1"> </span></div>
        <div class="form-group marb8 ">
            <label class="userLock" style="display: inline-block;
	height: 24px;
	width: 24px;
    margin-top: 9px;
    margin-left: 2px;
	vertical-align: middle;
	background: url(${pageContext.request.contextPath}/resource/LoginAndRegister/img/zzh_img/img/lock.png) no-repeat;"></label>
            <input name="userPwd" id="password_l" type="password" placeholder="请输入您的密码" required pattern="^(\w){6,20}$"/>
        </div>
        <div class="error btns login-form-tips" id="jsLoginTips"></div>

        <input class="btn btn-green" id="jsLoginBtn" type="submit" value="立即登录 > " />
    </form>
    <form class="tab-form hide" id="mobile_register_form" autocomplete="off" method="post" id="form2" action="">

        <div class="form-group marb20" style="margin-bottom: 0px">
            <label class="userHead" for="name"></label>
            <input id="jsRegMobile" name="mobile" type="text" placeholder="请输入您的手机号码" required pattern="^1[35897]\d{9}$"/>
        </div>
        <div class="d2" style=" width: 280px;height: 12px; line-height: 10px;border: 1px ;display: inline-block;"><span  class="ss2">    </span>      </div>
        <div class="clearfix">
            <div class="form-group marb8 verify-code">
                <input id="jsPhoneRegCaptcha" name="code" type="text" placeholder="输入手机验证码" required pattern="^\d{6}$"/>
            </div>
            <input style="background-color: #6ec55a; color: white;font-size: 14px" class="verify-code-btn sendcode" id="jsSendCode" type="button" value="发送验证码"/>
        </div>
        <div class="auto-box marb8">
        </div>
        <input class="btn btn-green" id="jsMobileRegBtn" type="submit" value="立即登录 >" />
    </form>
    <p class="form-p">没有fresh帐号？<a href="${pageContext.request.contextPath}/toregister">[立即注册]</a></p>
</div>
<!--</section>-->
<!--建议结束-->
<!--底部-->
<div class="footer">
    <div class="ft-con">
        <div class="ft-top">
            <img src="../../resource/LoginAndRegister/img/zzh_img/img/fot-1.jpg">
        </div>
        <div class="ft-bo">
            <div class="ft-b">
                <h3>服务保障</h3>
                <p>正品保证</p>
                <p>7天无理由退换</p>
                <p>退货返运费</p>
                <p>7X15小时客户服务</p>

            </div>
            <div class="ft-b">
                <h3>支付方式</h3>
                <p>公司转账</p>
                <p>货到付款</p>
                <p>在线支付</p>
                <p>分期付款</p>

            </div>
            <div class="ft-b">
                <h3>商家服务</h3>
                <p>商家入驻</p>
                <p>培训中心</p>
                <p>广告服务</p>
                <p>服务市场</p>

            </div>
            <div class="ft-b">
                <h3>服务保障</h3>
                <p>免运费</p>
                <p>海外配送</p>
                <p>EMS</p>
                <p>211限时达</p>

            </div>

        </div>
        <div class="banq">
            <p>©2016 果然新鲜 版权所有</p>
            <p>手机版 | 本站使用<span><img src="../../resource/LoginAndRegister/img/zzh_img/img/ft.jpg"></span>凡科建站搭建 | 管理登录</p>
        </div>

    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/swiper.min.js"></script>
<script type="text/javascript">
    $(function(){

        var swiper = new Swiper('.swiper-container', {
            //自动轮播
            autoplay: {
                delay: 1000,//1秒切换一次
            },
            // 如果需要前进后退按钮
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            // 如果需要分页器
            pagination: {
                el: '.swiper-pagination',
            },
        });

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

        $('.tab > h2').click(function(){
            var _self = $(this),
                index = _self.index();
            _self.addClass('active').siblings().removeClass('active');
            $('.tab-form').eq(index).removeClass('hide').siblings('.tab-form').addClass('hide');
        });

        $("#form1").submit(function(){
            //用户名提示
            var userName = document.getElementById("account_l");
            if(userName.validity.valueMissing){
                userName.setCustomValidity("用户名不能为空");
            } else {
                userName.setCustomValidity("");
            }

            // 密码提示
            var userPwd = document.getElementById("password_l");
            if(userPwd.validity.valueMissing){
                userPwd.setCustomValidity("密码不能为空");
            } else if(userPwd.validity.patternMismatch){
                userPwd.setCustomValidity("密码不符合要求，必须是6-12位字母数字或者下划线");
            } else {
                userPwd.setCustomValidity("");
            }
            $.ajax({
                url:"${pageContext.request.contextPath}/Login",
                type:"post",
                data:{
                    "userName":$("#account_l").val(),
                    "userPwd":$("#password_l").val()
                },
                dataType:"json",
                success:function(data){
                    if(data){
                        alert("登录成功")
                        location.href="${pageContext.request.contextPath}/toindex";
                    }else{
                        var stt1="*用户名或密码不正确！";
                        $(".d1").css("color","red");
                        $(".ss1").empty().append(stt1).show().delay(2000).hide(0);
                        return;
                    }
                }
            })
            return false;
        })

        $("#jsSendCode").click(function () {
            //校验手机号
            //用户名,2-10位数字，字母或下划线
            var rep2 = /^1[35897]\d{9}$/;
            var userTel=$("#jsRegMobile").val();
            var str3="";
            if(userTel==''){
                $("#jsRegMobile").focus();
                str3+="  *手机号不能为空！";
                $(".d2").css("color","red");
                $(".ss2").empty().append(str3).show().delay(2000).hide(0);
                return ;
            }else if(rep2.test(userTel)==false){
                $("#userTel").focus();
                str3+="  *手机号格式不正确！";
                $(".d2").css("color","red");
                $(".ss2").empty().append(str3).show().delay(2000).hide(0);
                return ;
            }else{
                $.ajax({
                    url:"${pageContext.request.contextPath}/sendSmsByLogin",
                    type:"post",
                    data:{
                        "userTel":$("#jsRegMobile").val()
                    },
                    dataType:"json",
                    success:function(data){
                        if(!data){
                            var str9="";
                            str9+="  *手机号未注册！请先注册！";
                            $(".d2").css("color","red");
                            $(".ss2").empty().append(str9).show().delay(2000).hide(0);
                            return ;
                        }else{
                            var str10="";
                            str10+="  验证码发送成功！！";
                            $(".d2").css("color","yellowgreen");
                            $(".ss2").empty().append(str10).show().delay(2000).hide(0);
                            // 获取验证码的倒计时
                            var timer;
                            var checkTime = 60;

                            // 让倒计时按钮失效
                            $(this).attr("disabled", true);
                           /* $(this).css("background-color", "#999");*/
                            timer = setInterval(function(){
                                // 开始倒计时
                                checkTime--;
                                if(checkTime == 0){
                                    $("#jsSendCode").val("获取验证码");
                                    $("#jsSendCode").css("background-color", "#6ec55a");
                                    $("#jsSendCode").attr("disabled", false);
                                    clearInterval(timer);
                                    checkTime = 60;
                                } else {
                                    $("#jsSendCode").val("(" + checkTime + ") 秒后重发");
                                }
                            }, 1000);
                        }
                    }

                })
            }

        })

        //点击进行手机号码登录
        $(".hide").submit(function(){

            // 手机号提示
            var userTel = document.getElementById("jsRegMobile");
            if(userTel.validity.valueMissing){
                userTel.setCustomValidity("手机号不能为空");
                return
            } else if(userTel.validity.patternMismatch){
                userTel.setCustomValidity("手机号不符合要求，必须是正确的11位手机号");
            } else {
                userTel.setCustomValidity("");
            }
            $.ajax({
                url:"${pageContext.request.contextPath}/LoginByVerifyCode",
                type:"post",
                data:{
                    "userTel":$("#jsRegMobile").val(),
                    "verifyCode":$("#jsPhoneRegCaptcha").val()
                },
                dataType:"json",
                success:function(data){
                     if(data=='0'){
                        alert("手机号不正确，请重新登录！")
                        return;
                    }else if(data=='1'){
                         alert("验证码超时，请重新登录！")
                         return;
                     }else if(data=='2'){
                         alert("登录成功！！")
                         location.href="${pageContext.request.contextPath}/toindex";
                     }
                    else {
                        var stt1=" *验证码不正确！";
                         $(".d2").css("color","red");
                        $(".ss2").empty().append(stt1).show().delay(2000).hide(0);
                        return;
                    }
                }
            })
            return false;
        })



    })

</script>
</html>
