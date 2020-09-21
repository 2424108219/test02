<%--
  Created by IntelliJ IDEA.
  User: 张飞逸
  Date: 2020/9/14
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>水果商城注册页</title>
    <link href="../../resource/LoginAndRegister/css/zzh_css/touch.css"rel="stylesheet">
    <link href="../../resource/LoginAndRegister/css/zzh_css/share.css"rel="stylesheet">
    <link href="../../resource/LoginAndRegister/css/zzh_css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="../../resource/LoginAndRegister/css/zzh_css/log_reg.css" />
    <link rel="stylesheet" href="../../resource/LoginAndRegister/css/zzh_css/regist.css" />
</head>
<body>
<!--顶部导航-->
<div class="nav">
    <div class="in-nav">
       <%-- <li id="name"><a href="#">收藏本站&nbsp;&nbsp;&nbsp;</a> </li>--%>
        <div id="shopping">
            <p>您的购物车中暂时没有任何产品</p>
            <input type="button" id="shop" value="去购物车结算" />
        </div>
    </div>
    <div class="inin-nav">
        <input type="button" id="button1" value="登录" class="login"/>
        <input type="button" id="button2" value="注册" />
    </div>

</div>
<!--顶部导航结束-->
<!--banner图片-->
<div class="xtp">
</div>
<div class="title-line">
    <span class="tit" style="font-size: 38px;">注  册</span>
</div>
<!--banner图片结束-->
<div class="content">
    <!--建议开始-->
    <div id="sec_form">
        <div class="inner_form">
            <div id="from">
                <form method="get" action="#">
                    <div class="sec_form_item" >
                        <input  type="text" id="userName" name="userName" placeholder="设置用户名,2-10位数字，字母或下划线" required pattern="^(\w){2,10}$" />
                    </div>
                    <span class="s1" style="color: red;">   </span>
                    <div class="sec_form_item" >
                        <input type="password" id="userPwd" name="userPwd" placeholder="设置密码，6-12位数字，字母或下划线" required pattern="^(\w){6,20}$"/><span></span>
                    </div>
                    <span class="s2" style="color: red;">   </span>
                    <div class="sec_form_item" >
                        <input type="password" id="userPwdNew" placeholder="确认密码" required pattern="^(\w){6,20}$"/><span></span>
                    </div>
                    <span class="s3" style="color: red;">   </span>
                    <div class="sec_form_item" >
                        <input type="text" id="userTel" name="phone" placeholder="手机号" required pattern="^1[35897]\d{9}$"/><span></span>
                    </div>
                    <span class="s4" style="color: red;">   </span>
                    <div class="clear">
                        <div class="f_l sec_form_item valid_item">
                            <input type="text" id="checkNum" placeholder="验证码" name="verifyCode" required pattern="^\d{6}$"/>
                        </div>
                        <input type="button" value="获取验证码" class="f_r valid_btn"/>
                    </div>
                    <p class="sec_reg_click">
                        <input type="checkbox" id="reg_check" />&nbsp;&nbsp;<label for="reg_check">点击注册，表示您同意果然新鲜</label><a href="#">《服务协议》</a>
                    </p>
                    <input type="submit" class="sec_form_btn" value="同意协议并注册"/>
                </form>
            </div>
        </div>
    </div>
    <!--建议结束-->
    <!--底部-->
    <div class="footer" style="margin-top: 150px">
        <div class="ft-con">
            <div class="ft-top">
                <img src="../../resource/LoginAndRegister/img/public/fot-1.jpg">
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
                <p>手机版 | 本站使用<span><img src="../../resource/LoginAndRegister/img/public/ft.jpg"></span>凡科建站搭建 | 管理登录</p>
            </div>

        </div>
    </div>
</div>
</body>
<script src="../../resource/LoginAndRegister/js/jquery-3.5.1.min.js"></script>
<script>

    $(function(){
        $(".login").click(function(){
            location.href="login.html";
        })

    })


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
    $(function(){
        // 初始页面让注册按钮失效
        $(".sec_form_btn").css("background-color", "#999");
        $(".sec_form_btn").attr("disabled", true);

        // 多选按钮选中，让按钮可用
        $("#reg_check").click(function(){
            if($(this).prop("checked")){
                $(".sec_form_btn").css("background-color", "#ff3441");
                $(".sec_form_btn").attr("disabled", false);
            } else {
                $(".sec_form_btn").css("background-color", "#999");
                $(".sec_form_btn").attr("disabled", true);
            }
        })

        //注册用户名校验
        $("#userName").blur(function(){
            //用户名,2-10位数字，字母或下划线
            var rep = /^(\w){2,10}$/;
            var userName=$("#userName").val();
            var str="";
            if(userName==''){
                $("#userName").focus();
                str+="  *用户名不能为空！";
                $(".s1").empty().append(str).show().delay(3000).hide(0);
                return ;
            }else if(rep.test(userName)==false){
                $("#userName").focus();
                str+="  *用户名为2-10位数字，字母或下划线！";
                $(".s1").empty().append(str).show().delay(3000).hide(0);
                return ;
            }else{
                $.ajax({
                    url:"${pageContext.request.contextPath}/checkUsername",
                    type:"post",
                    data:{"userName":$("#userName").val()},
                    dataType:"json",
                    success:function(data){
                        if(data){
                            var stt1="用户名已存在！";
                            $(".s1").empty().append(stt1).show().delay(4000).hide(0);
                            return;
                        }else{
                            var stt="用户名可使用！";
                            $(".s1").css("color","green");
                            $(".s1").empty().append(stt).show().delay(3000).hide(0);
                        }
                    }
                })

			}
        })

        // 点击发送验证码按钮
        $(".valid_btn").click(function(){
            //用户名,2-10位数字，字母或下划线
            var rep = /^(\w){2,10}$/;
            var userName=$("#userName").val();
            var str0="";
            if(userName==''){
                $("#userName").focus();
                str0+="  *用户名不能为空！";
                $(".s1").empty().append(str0).show().delay(1000).hide(0);
                return ;
            }else if(rep.test(userName)==false){
                $("#userName").focus();
                str0+="  *用户名为2-10位数字，字母或下划线！";
                $(".s1").empty().append(str0).show().delay(1000).hide(0);
                return ;
            }else{
                $.ajax({
                    url:"${pageContext.request.contextPath}/checkUsername",
                    type:"post",
                    data:{"userName":$("#userName").val()},
                    dataType:"json",
                    success:function(data){
                        if(data){
                            var stt1="用户名已存在！";
                            $(".s1").empty().append(stt1).show().delay(4000).hide(0);
                            return;
                        }/*else{
                            var stt="用户名可使用！";
                            $(".s1").css("color","green");
                            $(".s1").empty().append(stt).show().delay(3000).hide(0);
                        }*/
                    }
                })

            }
            //设置密码校验
            // 密码提示，6-12位数字，字母或下划线
            var userPwd=$("#userPwd").val();
            var rep1 = /^(\w){6,20}$/;
            var str1="";
            if(userPwd == ""){
                $("#userPwd").focus();
                str1+="  *密码不能为空！";
                $(".s2").empty().append(str1).show().delay(3000).hide(0);
                return;
            }else if(rep1.test(userPwd) == false){
                $("#userPwd").focus();
                str1+="  *密码为6-12位数字，字母或下划线！";
                $(".s2").empty().append(str1).show().delay(3000).hide(0);
                return;
            }

            //确认密码校验
            var userPwd=$("#userPwd").val();
            var userPwdNew=$("#userPwdNew").val();
            var str2="";
            if(userPwd != userPwdNew){
                $("#userPwdNew").focus();
                str2+="  *两次输入密码不一致！！";
                $(".s3").empty().append(str2).show().delay(3000).hide(0);
                return ;
            }

            //校验手机号
            //用户名,2-10位数字，字母或下划线
            var rep2 = /^1[35897]\d{9}$/;
            var userTel=$("#userTel").val();
            var str3="";
            if(userTel==''){
                $("#userTel").focus();
                str3+="  *手机号不能为空！";
                $(".s4").empty().append(str3).show().delay(3000).hide(0);
                return ;
            }else if(rep2.test(userTel)==false){
                $("#userTel").focus();
                str3+="  *手机号格式不正确！";
                $(".s4").empty().append(str3).show().delay(3000).hide(0);
                return ;
            }else{
                    $.ajax({
                        url:"${pageContext.request.contextPath}/sendSms",
                        type:"post",
                        data:{
                            "userTel":$("#userTel").val(),
                            "userName":$("#userName").val(),
                            "userPwd":$("#userPwd").val(),
                        },
                        dataType:"json",
                        success:function(data){
                            if(data){
                                var str9="";
                                str9+="  手机号已经注册过！";
                                $(".s4").empty().append(str9).show().delay(3000).hide(0);
                                return;
                            }else{
                                var str10="";
                                str10+="  手机号可以注册！";
                                $(".s4").css("color","green");
                                $(".s4").empty().append(str10).show().delay(3000).hide(0);
                                alert("发送成功");
                                // 获取验证码的倒计时
                                var timer;
                                var checkTime = 60;

                                // 让倒计时按钮失效
                                $(this).attr("disabled", true);
                                $(this).css("background-color", "#999");
                                timer = setInterval(function(){
                                    // 开始倒计时
                                    checkTime--;
                                    if(checkTime == 0){
                                        $(".valid_btn").val("获取验证码");
                                        $(".valid_btn").css("background-color", "#666");
                                        $(".valid_btn").attr("disabled", false);
                                        clearInterval(timer);
                                        checkTime = 60;
                                    } else {
                                        $(".valid_btn").val("(" + checkTime + ")  秒后重发");
                                    }
                                }, 1000);
                            }
                        },
                        error:function (data) {
                            alert("验证码发送失败")
                        }

                    })
			}


        })

        // 表单提交，确认密码和设置密码必须一致
        $("form").submit(function(){
            //用户名提示
            var userName = document.getElementById("userName");
            if(userName.validity.valueMissing){
                userName.setCustomValidity("用户名不能为空");
            } else {
                userName.setCustomValidity("");
            }

            // 密码提示
            var userPwd = document.getElementById("userPwd");
            if(userPwd.validity.valueMissing){
                userPwd.setCustomValidity("密码不能为空");
            } else if(userPwd.validity.patternMismatch){
                userPwd.setCustomValidity("密码不符合要求，必须是6-12位字母数字或者下划线");
            } else {
                userPwd.setCustomValidity("");
            }
            // 确认密码提示
            var userPwdNew = document.getElementById("userPwdNew");
            if(userPwdNew.validity.valueMissing){
                userPwdNew.setCustomValidity("确认密码不能为空");
            } else if(userPwdNew.validity.patternMismatch){
                userPwdNew.setCustomValidity("确认密码不符合要求，必须是6-12位字母数字或者下划线");
            }
            else {
                userPwdNew.setCustomValidity("");
            }
            // 手机号提示
            var userTel = document.getElementById("userTel");
            if(userTel.validity.valueMissing){
                userTel.setCustomValidity("手机号不能为空");
            } else if(userTel.validity.patternMismatch){
                userTel.setCustomValidity("手机号不符合要求，必须是正确的11位手机号");
            } else {
                userTel.setCustomValidity("");
            }

            var userPwd = $("#userPwd").val();
            var userPwdNew = $("#userPwdNew").val();
            if(userPwd != userPwdNew){
                alert("两次输入密码不一致，请重新设置密码！！！");
                // 阻止表单提交
                return false;
            }

            // 验证码提示
            var checkNum = document.getElementById("checkNum");
            if(checkNum.validity.valueMissing){
                checkNum.setCustomValidity("验证码不能为空");
                // 阻止表单提交
                return false;
            } else if(checkNum.validity.patternMismatch){
                checkNum.setCustomValidity("验证码不符合要求，必须是6位数字");
                // 阻止表单提交
                return false;
            } else {
                checkNum.setCustomValidity("");
            }
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/register",
                dataType: "JSON",
                data: $("form").serialize(),
                success: function (obj) {
                    if(obj=='0'){
                        alert("用户名与之前不符，请重新注册")
                    }else if(obj=='1'){
                        alert("密码与之前不符，请重新注册")
                    }else if(obj=='2'){
                        alert("手机号与之前不符，请重新注册")
                    }else if(obj=='3'){
                        alert("验证码超时，请重新注册")
                    }else if(obj=='4'){
                        alert("注册成功,请登录！！")
                        location.href="${pageContext.request.contextPath}/tologin"
                    }else if(obj=='5'){
                        alert("验证码不正确，请重新注册")
                    }
                },
                error: function (obj) {
                    alert("注册失败！！")
                }

            })
            return false;
        })

    })

</script>
</html>
