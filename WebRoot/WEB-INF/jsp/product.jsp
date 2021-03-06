<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>网上商城</title>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="css/index.css" />
<script>
	function saveCart(){
		document.getElementById("cartForm").submit();
	}
</script>

</head>
<body>
<%@ include file="othermenu.jsp" %>	

</div><div class="container productContent">
		<div class="span67">
			 <div class="hotProductCategory">
					<dl>
						<dt>
								<a href="./image/蔬菜 - Powered By Mango Team.htm">蔬菜</a>
							</dt>
						<dd>
							<a>无公害蔬菜</a>
						</dd>
						<dd>
							<a>特菜类</a>
						</dd>
						<dd>
							<a>有机蔬菜</a>
						</dd>
						<dd>
							<a>蔬菜套餐</a>
						</dd>
					</dl>
					<dl>
						<dt>
								<a>水果</a>
							</dt>
						<dd>
							<a>国产</a>
						</dd>
						<dd>
							<a>进口</a>
						</dd>
					</dl>
					<dl>
						<dt>
								<a >肉类</a>
							</dt>
						<dd>
							<a>猪肉</a>
						</dd>
						<dd>
							<a>牛羊肉</a>
						</dd>
						<dd>
							<a>家禽</a>
						</dd>
						<dd>
							<a>鱼</a>
						</dd>
						<dd>
							<a>虾</a>
						</dd>
						<dd>
							<a>加工水产</a>
						</dd>
						<dd>
							<a>其他水产</a>
						</dd>
					</dl>
					<dl>
						<dt>
								<a >蛋、奶及豆制品类</a>
							</dt>
						<dd>
							<a>蛋</a>
						</dd>
						<dd>
							<a>奶</a>
						</dd>
						<dd>
							<a>豆制品</a>
						</dd>
					</dl>
					<dl>
						<dt>
								<a >干果</a>
							</dt>
						<dd>
							<a>干制坚果</a>
						</dd>
						<dd>
							<a>干制果实/果肉</a>
						</dd>
						<dd>
							<a>干制种仁</a>
						</dd>
					</dl>
					<dl>
						<dt>
								<a >谷薯杂粮</a>
							</dt>
						<dd>
							<a>米类</a>
						</dd>
						<dd>
							<a>杂粮</a>
						</dd>
						<dd>
							<a>面粉</a>
						</dd>
						<dd>
							<a>薯类</a>
						</dd>
						<dd>
							<a>礼盒</a>
						</dd>
						<dd>
							<a>干货</a>
						</dd>
					</dl>
					
					
					
			</div> 
			

		</div>
		
		<div class="span18 last">
			<div class="kuang">
			<div class="productImage">
					<a title="" style="outline-style: none; text-decoration: none;" id="zoom" href="http://image/r___________renleipic_01/bigPic1ea8f1c9-8b8e-4262-8ca9-690912434692.jpg" rel="gallery">
						<div class="zoomPad"><img style="opacity: 1;" title="" class="medium" src="${ pageContext.request.contextPath }/<s:property value="model.image"/>"><div style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;" class="zoomPup"></div><div style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;" class="zoomWindow"><div style="width: 368px;" class="zoomWrapper"><div style="width: 100%; position: absolute; display: none;" class="zoomWrapperTitle"></div><div style="width: 0%; height: 0px;" class="zoomWrapperImage"><img src="%E5%B0%9A%E9%83%BD%E6%AF%94%E6%8B%89%E5%A5%B3%E8%A3%852013%E5%A4%8F%E8%A3%85%E6%96%B0%E6%AC%BE%E8%95%BE%E4%B8%9D%E8%BF%9E%E8%A1%A3%E8%A3%99%20%E9%9F%A9%E7%89%88%E4%BF%AE%E8%BA%AB%E9%9B%AA%E7%BA%BA%E6%89%93%E5%BA%95%E8%A3%99%E5%AD%90%20%E6%98%A5%E6%AC%BE%20-%20Powered%20By%20Mango%20Team_files/6d53c211-2325-41ed-8696-d8fbceb1c199-large.jpg" style="position: absolute; border: 0px none; display: block; left: -432px; top: 0px;"></div></div></div><div style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;" class="zoomPreload">Loading zoom</div></div>
					</a>

				  
			</div>
			<div class="buykuang">
			<div class="name"><s:property value="model.pname"/></div>
			<div class="sn">
				<div>编号：<s:property value="model.pid"/></div>
			</div>
			<div class="info">
				<dl>
					<dt>商城价:</dt>
					<dd>
						<strong>￥：<s:property value="model.shop_price"/>元</strong>
							参 考 价：
							<del>￥<s:property value="model.market_price"/>元</del>
					</dd>
				</dl>
					<dl>
						<dt>促销:</dt>
						<dd>
								<a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)">限时抢购</a>
						</dd>
					</dl>
					<dl>
						<dt>    </dt>
						<dd>
							<span>    </span>
						</dd>
					</dl>
			</div>
			<form id="cartForm" action="${ pageContext.request.contextPath }/cart_addCart.action" method="post" >
				<input type="hidden" name="pid" value="<s:property value="model.pid"/>"/>
				<div class="action">
						<dl class="quantity">
							<dt>购买数量:</dt>
							<dd>
								<input id="count" name="count" value="1" maxlength="4" onpaste="return false;" type="text"/>
							</dd>
							<dd>
								件
							</dd>
						</dl>
						
					<div class="buy">
							<input id="addCart" class="addCart" value="加入购物车" type="button" onclick="saveCart()"/>
					</div>
				</div>
			</form>
			</div>
			<div id="bar" class="bar">
				<ul>
						<li id="introductionTab">
							<a href="#introduction">商品介绍</a>
						</li>
						
				</ul>
			</div>
				
				<div id="introduction" name="introduction" class="introduction">
					<div class="title">
						<strong><s:property value="model.pdesc"/></strong>
					</div>
					<div>
						<img src="${pageContext.request.contextPath }/<s:property value="model.image"/>">
					</div>
				</div>
				
				
				
		</div>
	</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="image\r___________renleipic_01/footer.jpg" alt="我们的优势" title="我们的优势" height="52" width="950">
</div>
</div>
	<div class="span24">
		<ul class="bottomNav">
					<li>
						<a href="#">关于我们</a>
						|
					</li>
					<li>
						<a href="#">联系我们</a>
						|
					</li>
					<li>
						<a href="#">诚聘英才</a>
						|
					</li>
					<li>
						<a href="#">法律声明</a>
						|
					</li>
					<li>
						<a>友情链接</a>
						|
					</li>
					<li>
						<a target="_blank">支付方式</a>
						|
					</li>
					<li>
						<a target="_blank">配送方式</a>
						|
					</li>
					<li>
						<a >SHOP++官网</a>
						|
					</li>
					<li>
						<a>SHOP++论坛</a>
						
					</li>
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2013-2017 易捷商城 版权所有</div>
	</div>
</div>
</body>
</html>