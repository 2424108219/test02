<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 张飞逸
  Date: 2020/9/18
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>果然新鲜</title>
    <link href="${pageContext.request.contextPath}/resource/LoginAndRegister/css/yt_css/index.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/LoginAndRegister/css/yt_css/share.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/LoginAndRegister/css/zzh_share_css.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/jquery.SuperSlide.2.1.1.js"></script>
    <script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/zzh_share_js.js"></script>
    <script src="${pageContext.request.contextPath}/resource/LoginAndRegister/js/index.js"></script>
    <style type="text/css">
        .fk_siteBackToTop {
            background: url(${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/03.png);
            height: 50px;
            width: 50px;
            margin: 1px;
            position: fixed;
            cursor: pointer;
            z-index: 31;
            right: 26px;
            bottom: 60px;
            display: inline-block;
            opacity: 0.5;
        }

        .fk_siteBackToTop:hover {
            opacity: 1;
        }
    </style>
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
            <a href="${pageContext.request.contextPath}/loginout">退出</a>
        </div>

    </div>
</div>

<div class="second">
    <div class="headr">
        <div class="heard-con">

            <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/logo.jpg" style="margin-top: 7px;float: left;position: absolute">
            <div class="headr-nav">

                <div class="search-con">
                    <form action="/search" method="get">
                        <div class="search_text">
                            <input type="text" class="input-con" placeholder="搜索商品" />
                            <input type="submit" class="input-btu" value="搜索" />
                        </div>
                    </form>
                </div>
                <div class="top1">
                    <div class="top">
                        <ul>
                            <li><a href="index.html">首页</a> </li>
                            <li><a href="hot.html">蔬果热卖</a> </li>
                            <li><a href="produ.html">全部产品</a> </li>
                            <li><a href="consult.html">最新资讯</a></li>
                            <li><a href="userInfo.html">个人中心</a> </li>
                        </ul>
                    </div>

                    <div class="sptopfoot">
                        <div class="spbottom">
                        </div>
                    </div>
                </div>

            </div>
            <div class="headr-right">
                <div class="iconfont" style="font-size: 16px;margin-right: -20px">我的购物车</div>

                <div class="hr-car">
                    <div class="iconfont1" style="font-size: 15px;left: 20px">您的购物车内暂时没有任何产品。</div>
                </div>
            </div>
        </div>
    </div>
    <!--顶部导航结束-->
    <!--banner图片-->
    <div class="her-banner">

    </div>
    <!--banner图片结束-->
    <!--主页内容-->
    <div class="content">
        <div class="ban-boot clear">
            <div class="ban-zs">
                <a href="${pageContext.request.contextPath}/toProductDetails?id=7"><img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/ban-1.jpg" width="100%"></a>
            </div>
            <div class="ban-zs">
                <a href="${pageContext.request.contextPath}/toProductDetails?id=8"><img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/ban-2.jpg" width="100%"></a>
            </div>
            <div class="ban-zs">
                <a href="${pageContext.request.contextPath}/toProductDetails?id=9"><img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/ban-3.jpg" width="100%"></a>
            </div>
        </div>
        <!--果园推荐开始-->
        <div class="recommand clear">
            <div class="rec-nav clear">
                <h2>果园推荐 <span>RECOMMAND</span></h2>
            </div>
            <div class="rec-cont clear">
                <div class="rec-left">
                    <a href="${pageContext.request.contextPath}/toProductDetails?id=10"> <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/rc-1.jpg"></a>
                </div>

                <div class="rec-right">
                    <c:forEach items="${products}" var="pro">
                    <div class="rcr">
                        <div class="rcr-top">
                            <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public${pro.image}" width="100%" height="230px">
                        </div>
                        <div class="rcr-bot">
                            <div class="rb-top" style="margin-top: 20px">
                                ${pro.name}
                            </div>
                            <div class="second_P">
                                <span class="fk-prop">￥</span>
                                <span class="fk-prop-price">${pro.price}
										<span class="fk-prop-p">.00</span>
									</span>
                                <span class="second_Marketprice">￥0.00</span>
                            </div>
                            <div class="buy">
                                <a class="second_mallBuy" href="${pageContext.request.contextPath}/toProductDetails?id=${pro.id}">
                                    <span style="color: white;">购买</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>


            </div>
        </div>

        <!--果园推荐结束-->
    </div>
    <!--每日新品特卖-->
    <div class="rec-bottom clear">
        <div class="rbt-con">
            <div class="banner_1">
                <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/rb-1.jpg" width="1424px">
                <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/rb-2.jpg" width="1424px">
            </div>
        </div>
        <ul class="banner-bottom">

        </ul>
    </div>
    <div class="content">
        <div class="new-nav clear">
            <div class="nwn-con">
                <div style="text-align: center;">
						<span style="">
							<span style="font-size: 31px;">
								<font style="color: rgb(33, 33, 33);" color="#212121">
									<font style="color: rgb(231, 231, 231);" color="#e7e7e7">
										———————
									</font>
									<b>&nbsp; 每日新品特卖 &nbsp;</b>
								</font>
							</span></span>
                    <span style="font-size: 31px;">
							<font style="color: rgb(231, 231, 231);" color="#e7e7e7">
								———————
							</font>
						</span>
                </div>
                <div style="text-align: center;">
                    <font color="#353535" style="">
							<span style="font-size: 16px;">
								<font style=color:#888888>
									新鲜水果每一天，健康生活每一刻
								</font>
							</span>
                    </font>
                </div>

            </div>


        </div>
        <div class="new-con clear">
            <div class="nec-lift">
                <div class="fk-editor simpleText  ">
                    <font color="#4b4b4b">
							<span style="">
								<span style="line-height: 29px;">
									<span style="color: rgb(75, 75, 75); font-size: 16px;">
										有机生鲜
									</span>
									<div style="color: rgb(75, 75, 75);">
										<span style="font-size: 20px;">
											天然无污染水果
										</span>
									</div>
								</span>
							</span>
                        <div style="color: rgb(75, 75, 75);">
								<span style="font-size: 20px;">
									<br>
								</span>
                        </div>
                        <div>
                            <font style="color: rgb(243, 151, 0);" color="#f39700">
                                <b>
                                    <span style="font-size: 42px;">6.8</span>
                                </b><span style="font-size: 42px;">
										<b>折</b>
										<span style="font-size: 18px;">
											<font style="color: rgb(53, 53, 53);" color="#353535">起</font>
										</span></span></font>
                        </div>
                    </font>
                </div>
                <div class="xiqing">
                    <a href="${pageContext.request.contextPath}/" style="color: white">查看详情 &gt;</a>
                </div>
            </div>
            <div class="nec-right">
                <a href="${pageContext.request.contextPath}/toProductDetails?id=11"> <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/nw-1.jpg"></a>

            </div>

        </div>
        <div class="new-bottom clear">
            <div class="nw-b">
                <a href="${pageContext.request.contextPath}/toProductDetails?id=12"><img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/nw-2.jpg"></a>
            </div>
            <div class="nw-b">
                <a href="${pageContext.request.contextPath}/toProductDetails?id=13"> <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/nw-3.jpg"></a>
            </div>
            <div class="nw-b">
                <a href="${pageContext.request.contextPath}/toProductDetails?id=14"> <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/nw-4.jpg"></a>
            </div>
            <div class="nw-b" style="margin:0">
                <a href="${pageContext.request.contextPath}/toProductDetails?id=15"> <img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/nw-5.jpg"></a>
            </div>
        </div>
        <!--每日新品特卖结束-->
        <!--蔬果资讯-->
        <div class="fruits">
            <div class="fru-nav">
                <div class="fk-editorb ">
                    <font style="color: rgb(103, 141, 30);" color="#678d1e">蔬果资讯</font>
                </div>
                <a href="${pageContext.request.contextPath}/toConsult"><font style="color: rgb(53, 53, 53);float: right" color="#353535">更多资讯</font></a>
            </div>
            <div class="fru-lift">
                <div class="frl-nav">
                    <ul>
                        <li>品种</li>
                        <li>地区</li>
                        <li>价格</li>
                        <span>时间</span>
                    </ul>
                </div>
                <div class="txtMarquee-top">
                    <div class="bd">
                        <ul class="infoList">

                            <li>
                                <p> 西瓜</p>
                                <p> 内蒙古鄂尔多斯</p>
                                <p>10/kg</p>
                                04-09
                            </li>
                            <li>
                                <p>葡萄</p>
                                <p>新疆乌鲁木齐</p>
                                <p>19/kg</p>
                                04-09
                            </li>
                            <li>
                                <p>车厘子</p>
                                <p>河南省郑州市</p>
                                <p> 58.5/kg</p>
                                04-09
                            </li>
                            <li>
                                <p>菜心 </p>
                                <p>河南省新乡市</p>
                                <p> 5.5/kg</p>
                                04-09
                            </li>
                            <li>
                                <p>西兰花</p>
                                <p>河南省信阳市</p>
                                <p> 3.5/kg</p>
                                04-09
                            </li>
                            <li>
                                <p>苹果 </p>
                                <p>河南省济源市</p>
                                <p> 5.5/kg </p>
                                04-09
                            </li>
                            <li>
                                <p>西瓜 </p>
                                <p>内蒙古鄂尔多斯</p>
                                <p>10/kg</p>
                                04-09
                            </li>
                            <li>
                                <p>葡萄 </p>
                                <p>新疆乌鲁木齐 </p>
                                <p>19/kg</p>
                                04-09
                            </li>
                            <li>
                                <p>菜心 </p>
                                <p>河南省新乡市</p>
                                <p> 5.5/kg </p>
                                04-09
                            </li>
                            <li>
                                <p>西兰花</p>
                                <p> 河南省信阳市</p>
                                <p> 3.5/kg </p>
                                04-09
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="fru-right">
                <div id="slideBox" class="slideBox">
                    <div class="hd">
                        <%--<!--	 这边改动！！！！！！	 <ul><li>蜜橘首发</li>
                                                    <li>智利车厘子</li>
                                                    <li>进口青苹果</li>
                                                    </ul> -->--%>
                    </div>

                    <div class="bd slideBox1">
                        <ul class="slide_box">
                            <li class="active"><a href="${pageContext.request.contextPath}/toProductDetails?id=16" target="_blank"><img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/fr-1.jpg" /></a></li>
                            <li><a href="${pageContext.request.contextPath}/toProductDetails?id=17" target="_blank"><img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/fr-2.jpg" /></a></li>
                            <li><a href="${pageContext.request.contextPath}/toProductDetails?id=18" target="_blank"><img src="${pageContext.request.contextPath}/resource/LoginAndRegister/img/public/fr-3.jpg" /></a></li>
                        </ul>
                        <!--

                        这边添加的
                         -->
                        <ul class="num">
                            <li class="active">
                                <a href="#">1</a>
                            </li>
                            <li class="">
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                        </ul>
                    </div>

                </div>

            </div>
        </div>
        <%--蔬果资讯结束--%>
    </div>
    <%--主页内容结束--%>
    <%--底部--%>
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
    </div>
    <div class="fk_siteBackToTop" id="siteBackToTop_small_box" title="回到顶部" _realmousein="0">

    </div>
</body>
<script type="text/javascript">
    /* 回到顶部 */
        $(function() {
            $(window).scroll(function() {
                /* 判断滚动条 距离页面顶部的距离 100可以自定义*/
                if ($(window).scrollTop() > 50) {
                    $("#siteBackToTop_small_box").fadeIn(50); /* 这里用.show()也可以 只是效果太丑 */
                } else {
                    $("#siteBackToTop_small_box").fadeOut(50);
                }
            });
        });
        /* 给图片元素绑定 回到顶部的事件 */
        $(function() {
            $("#siteBackToTop_small_box").on("click", function() {
                $('body,html').animate({
                    scrollTop: 0
                }, 200);
                return false;
            });
        });

</script>
</html>
