<%--
  Created by IntelliJ IDEA.
  User: 张飞逸
  Date: 2020/9/17
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <title>最新资讯</title>
    <link href="${pageContext.request.contextPath}/resource/LoginAndRegister/css/szh_css/consult.css"rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/LoginAndRegister/css/szh_css/share(2).css"rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/LoginAndRegister/css/zzh_share_css.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/zzh_share_js.js"></script>
    <script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/consult.js"></script>
</head>
<body>
<div class="first">
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
</div>

<!--顶部导航-->
<div class="headr">
    <div class="heard-con">
        <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/logo.jpg" style="margin-top: 7px;float: left;position: absolute">
        <div class="headr-nav">
            <ul>
                <li><a href="index.html">首页</a> </li>
                <li><a href="hot.html">蔬果热卖</a> </li>
                <li><a href="produ.html">全部产品</a> </li>
                <li><a href="consult.html" style="color: #4AB344"><span style="color: #4AB344">最新资讯</span></a></li>
                <li><a href="userInfo.html">个人中心</a> </li>
            </ul>
            <div class="sptopfoot">
                <div class="spbottom"  >
                </div>
            </div>
        </div>
        <div class="headr-right">
            <i class="iconfont" style="font-size: 16px;margin-right: 10px">&#xe7d5;</i>
            我的购物车 ∨
            <div class="hr-car">
                <i class="iconfont"style="font-size: 40px;margin-right: 10px">&#xe633;</i>
                您的购物车内暂时没有任何产品。
            </div>
        </div>
    </div>
</div>
<!--顶部导航结束-->
<div class="her-banner">
</div>
<div style="height: 800px;width: 1175px;border: 1px ;display: inline-block;margin-left: 170px">
    <h1 class="title" style="margin-top: 20px">谁在为“蒜你狠”推波助澜</h1>
    </br>
    <div class="line1" style="border: 1px solid #f0efef;
    border-bottom: none;
    margin-top: 1px"></div>
    <div class="txt" style="font-family: 微软雅黑;
    font-size: 16px;
    color: #333333;">&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <p></p>
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;${news.content}

    </div>

</div>
<!--底部-->
<div class="line2" style="border: 1px solid #f0efef;
    border-bottom: none;
    margin-bottom: 60px"></div>
<div class="footer">
    <div class="ft-con">
        <div class="ft-top">
            <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/fot-1.jpg">
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
            <p>手机版 | 本站使用<span><img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/ft.jpg"></span>凡科建站搭建 | 管理登录</p>
        </div>

    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
    })
</script>
</html>
