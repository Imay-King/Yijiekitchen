<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>易捷厨房</title>
		<link rel="stylesheet" href="css/index.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiftpic.js"></script>

	</head>

	<body>
		<%@ include file="menu.jsp" %>
		<div class="topnav">
			<div class="catelog">
				<div class="d1">
					<a target="_blank" href="#" id="ji">精选商品分类</a>
				</div>
				<div class="dd" id="sort">
					<div class="menusort" style="background-color: #009A61;height: 473px;width: 200px;">
						<div class="item">
							<span class="i-master">
							<h3>
								<p class="fresh"></p>
								<a target="_blank" href="#">生鲜食品</a>
							</h3>
							<ul class="subcat">
								<li>
									<a target="_blank" href="#">精品肉类</a>
								</li>
								<li>
									<a target="_blank" href="#">虾</a>
								</li>
								<li>
									<a target="_blank" href="#">进口水果</a>
								</li>
							</ul>
							
						</span>
						</div>
						<div style="clear: both;"></div>
						<div class="item">
							<span class="i-master">
							<h3>
								<p class="drink"></p>
								<a href="#">酒水饮料</a>
							</h3>
							<ul class="subcat">
								<li>
									<a href="#">白酒</a>
								</li>
								<li>
									<a href="#">葡萄酒</a>
								</li>
								<li>
									<a href="#">进口牛奶</a>
								</li>
							</ul>
						</span>
						</div>
						<div style="clear: both;"></div>
						<div class="item">
							<span class="i-master">
							<h3>
								<p class="food"></p>
								<a href="#">生鲜食品</a>
							</h3>
							<ul class="subcat">
								<li>
									<a href="#">精品肉类</a>
								</li>
								<li>
									<a href="#">虾</a>
								</li>
								<li>
									<a href="#">进口水果</a>
								</li>
							</ul>
						</span>
						</div>
						<div style="clear: both;"></div>
						<div class="item">
							<span class="i-master">
							<h3>
								<p class="dessert"></p>
								<a href="#">生鲜食品</a>
							</h3>
							<ul class="subcat">
								<li>
									<a href="#">精品肉类</a>
								</li>
								<li>
									<a href="#">虾</a>
								</li>
								<li>
									<a href="#">进口水果</a>
								</li>
							</ul>
						</span>
						</div>
						<div style="clear: both;"></div>
						<div class="item">
							<span class="i-master">
							<h3>
								<p class="tea"></p>
								<a href="#">生鲜食品</a>
							</h3>
							<ul class="subcat">
								<li>
									<a href="#">精品肉类</a>
								</li>
								<li>
									<a href="#">虾</a>
								</li>
								<li>
									<a href="#">进口水果</a>
								</li>
							</ul>
						</span>
						</div>
						<div style="clear: both;"></div>
						<div class="item">
							<span class="i-master">
							<h3>
								<p class="oil"></p>
								<a href="#">生鲜食品</a>
							</h3>
							<ul class="subcat">
								<li>
									<a href="#">精品肉类</a>
								</li>
								<li>
									<a href="#">虾</a>
								</li>
								<li>
									<a href="#">进口水果</a>
								</li>
							</ul>
						</span>
						</div>
						<div style="clear: both;"></div>
						<div class="item">
							<span class="i-master">
							<h3>
								<p class="baby"></p>
								<a href="#">生鲜食品</a>
							</h3>
							<ul class="subcat">
								<li>
									<a href="#">精品肉类</a>
								</li>
								<li>
									<a href="#">虾</a>
								</li>
								<li>
									<a href="#">进口水果</a>
								</li>
							</ul>
						</span>
						</div>
						<div style="clear: both;"></div>
						<div class="item">
							<span class="i-master">
							<h3>
								<p class="health"></p>
								<a href="#">生鲜食品</a>
							</h3>
							<ul class="subcat">
								<li>
									<a href="#">精品肉类</a>
								</li>
								<li>
									<a href="#">虾</a>
								</li>
								<li>
									<a href="#">进口水果</a>
								</li>
							</ul>
						</span>
						</div>
					</div>
				</div>
			</div>
			<div class="menutop">
				<ul>
					<li>
						<a href="#" class="mainpage">首页</a>
					</li>
					<li>
						<a href="#">优选生鲜</a>
					</li>
					<li>
						<a href="#">优选水果</a>
					</li>
					<li>
						<a href="#">企业专区</a>
					</li>
					<li id="ad">
						<a href="#">
							<img src="img/ad.png" />
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="slide-pic" id="slide-pic">

			<div id="other">
				<div style="background-color: #202020;position:relative;width:95px;height: 470px;z-index: -5;float: left;"></div>
				<!--<div style="background-color: #202020;position:relative;width: 95px;height: 470px;z-index: -5;float: right;"></div>-->
				<div style="background-color: white;position:relative;width: 95px;height: 470px;z-index: -5;float: left;"></div>
				<div style="background-color: #171B22;position:relative;width: 95px;height: 470px;z-index: -5;float: left;"></div>
				<!--<div style="background-color: white;position:relative;width: 95px;height: 470px;z-index: -5;float: right;"></div>		
				<!--<div  style="background-color: #171B22;position:relative;width: 95px;height: 470px;z-index: -5;float: right;"></div>-->
				<div style="background-color: #FCC836;position:relative;width: 95px;height: 470px;z-index: -5;float: left;"></div>
				<!--<div   style="background-color: #FCC836;position:relative;width: 95px;height: 470px;z-index: -5;float: right;"></div>
				-->
			</div>

			<div id="wrap">
				<div id="slider">
					<a target="_blank" href="#"><img src="img/img01.jpg" style="width: 1067px;" /></a>
					<a target="_blank" href="#"><img src="img/img02.jpg" style="width: 1067px;" /></a>
					<a target="_blank" href="#"><img src="img/img03.jpg" style="width: 1067px;" /></a>
					<a target="_blank" href="#"><img src="img/img04.jpg" style="width: 1067px;" /></a>
				</div>
				<ul id="numb">
					<b><li>1</li></b>
					<b><li>2</li></b>
					<b><li>3</li></b>
					<b><li>4</li></b>
				</ul>
				<div class="nav-pic">

					<div class="nav-pic1">
						<a href="#"><img src="img/apple.jpg" /></a>
					</div>
					<div class="nav-pic1">
						<a href="#"><img src="img/milk.jpg" /></a>
					</div>
					<div class="nav-pic1">
						<a href="#"><img src="img/milk.jpg" /></a>
					</div>
				</div>
			</div>
		</div>
		<div class="index-1">
			<div class="hotsale">
				<div class="hot_left">
					<h2>畅销品
				<span></span>
				</h2>
					<ul class="big">
						<li class="goods">
							<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=45" target="_blank" title="胡姬花 古法小榨花生油 1.918L"><img src="img/oil.jpg" /></a>
							<span class="addcart">
								<a href="#">加入购物车</a>
							</span>

						</li>

						<li class="goods">
							<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=46" target="_blank" title="瓦伦丁 小麦啤酒 500ml*6"><img src="img/beer.jpg" /></a>
							<span class="addcart">
								<a href="#">加入购物车</a>
							</span>
						</li>
						<li class="goods">
							<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=46" target="_blank" title="瓦伦丁 小麦啤酒 500ml*6"><img src="img/beer.jpg" /></a>
							<span class="addcart">
								<a href="#">加入购物车</a>
							</span>
						</li>
						<li class="goods">
							<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=46" target="_blank" title="瓦伦丁 小麦啤酒 500ml*6"><img src="img/beer.jpg" /></a>
							<span class="addcart">
								<a href="#">加入购物车</a>
							</span>
						</li>
					</ul>
					<ul class="small">
						<li class="goods1">
							<a href="#" target="_blank" title="韩国农协KOREA NONGHYUP 蜂蜜芦荟茶 1kg"><img src="img/honey.jpg" /></a>
							<span class="addcart">
								<a href="#">加入购物车</a>
							</span>
						</li>
						<li class="goods1">
							<a href="#" target="_blank" title="韩国农协KOREA NONGHYUP 蜂蜜芦荟茶 1kg"><img src="img/honey.jpg" /></a>
							<span class="addcart">
								<a href="#">加入购物车</a>
							</span>
						</li>
						<li class="goods1">
							<a href="#" target="_blank" title="韩国农协KOREA NONGHYUP 蜂蜜芦荟茶 1kg"><img src="img/honey.jpg" /></a>
							<span class="addcart">
								<a href="#">加入购物车</a>
							</span>
						</li>
						<li class="goods1">
							<a href="#" target="_blank" title="韩国农协KOREA NONGHYUP 蜂蜜芦荟茶 1kg"><img src="img/honey.jpg" /></a>
							<span class="addcart">
								<a href="#">加入购物车</a>
							</span>
						</li>

					</ul>
				</div>
				<div class="hot_right">
					<div class="img-1">
						<a href="#" target="_blank">
							<img src="img/ice.jpg" />
						</a>
					</div>
					<div class="latestnews">
						<div class="mai">
							<div class="T">
								<h2>最新动态</h2>
							</div>
							<div class="more"><a href="#" target="_blank">更多></a></div>
						</div>
						<ul>
							<li>
								<a href="#" target="_blank" class="red">东北17城开通配送通知</a>
							</li>
							<li>
								<a href="#" target="_blank" class="com">优选卡使用提示</a>
							</li>
							<li>
								<a href="#" target="_blank" class="com">蓝之蓝葡萄酒晒单中奖公告</a>
							</li>
							<li>
								<a href="#" target="_blank" class="com">8-9月会员周捕蟹体验活动中奖公告</a>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<!--
        	熟食蛋奶
        	
        -->
		<div class="banpic">
			<a href="#" target="_blank">
				<img src="img/ban_pic1.jpg" />
			</a>
		</div>
		<div class="choosefresh">
			<div class="category">
				<ul class="mTitle">
					<li>
						<h2>
							<a class="trackref" name="food_category1" href="#" target="_blank" style="color: white;">
								熟食蛋奶
							</a>
						</h2>
					</li>

				</ul>
				<div class="lCont">
					<a href="#" target="_blank">
						<img src="img/picmilk.jpg" style="display: inline;margin-left: 9px;" />
					</a>

				</div>
			</div>
			<div class="yfRight">
				<div class="subCont">
					<ul class="pList" id="floor-gap-1">
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						
						
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666; ">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="redge">
				<ul class="rHot">
					<li >
						<a class="trackref" href="#">大米</a>
					</li>
					<li >
						<a class="trackref" href="#">牛奶</a>
					</li>
					<li >
						<a class="trackref" href="#">鸡蛋</a>
					</li>
					<li >
						<a class="trackref" href="#">黄油</a>
					</li>
					<li >
						<a class="trackref" href="#">和润</a>
					</li>
					<li >
						<a class="trackref" href="#">南阳</a>
					</li>
					
				</ul>
			</div>
			<div class="rimg">
				<a href="#" target="_blank">
					<img src="img/gift.jpg"  style="height: 200px; width: 200px;"/>
				</a>
				
			</div>
		</div>
<!--
	牛奶茶饮
-->		
		<div class="banpic">
			<a href="#" target="_blank">
				<img src="img/ban_pic2.jpg" />
			</a>
		</div>
		<div class="choosefresh">
			<div class="category">
				<ul class="mTitle" style="background-color: #D12E49;">
					<li>
						<h2>
							<a class="trackref" name="food_category1" href="#" target="_blank" style="color: white;"> 
								牛奶茶饮
							</a>
						</h2>
					</li>

				</ul>
				<div class="lCont">
					<a href="#" target="_blank">
						<img src="img/picmilk.jpg" style="display: inline;margin-left: 9px;" />
					</a>

				</div>
			</div>
			<div class="yfRight">
				<div class="subCont">
					<ul class="pList" id="floor-gap-1">
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						
						
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666;">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
						
						<li class="egg">
							<div class="pImg">
								<a href="#" target="_blank" title="">
									<img src="img/squid.jpg" />
								</a>
								<div class="gbn" style="top:160px;"><a href="#" > 加入购物车</a></div>
							</div>
							<div class="title-a">
								<a href="#" target="_blank" style=" text-decoration: none;
                                color: #666666; ">精渔工坊 鱿鱼足150g</a>
							</div>
							<div id="priceL" class="price">
								<b>￥25</b>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="redge">
				<ul class="rHot">
					<li >
						<a class="trackref" href="#">大米</a>
					</li>
					<li >
						<a class="trackref" href="#">牛奶</a>
					</li>
					<li >
						<a class="trackref" href="#">鸡蛋</a>
					</li>
					<li >
						<a class="trackref" href="#">黄油</a>
					</li>
					<li >
						<a class="trackref" href="#">和润</a>
					</li>
					<li >
						<a class="trackref" href="#">南阳</a>
					</li>
					
				</ul>
			</div>
			<div class="rimg">
				<a href="#" target="_blank">
					<img src="img/gift.jpg"  style="height: 200px; width: 200px;"/>
				</a>
				
			</div>
		</div>
		
	<div id="footer">
		<div class="foot_zd">
		<ul>
			<li class="global"></li>
			<li class="resource"></li>
			<li class="quanc"></li>
			
		</ul>
		</div>
		
	</div>
	</body>
		

</html>