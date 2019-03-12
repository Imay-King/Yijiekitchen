<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<div class="siteMenu">
			<div class="nav-menu">
				<ul class="f1">
					<li class="t1">20元以上起配送 送至</li>
					<li class="selcity">
						<p>
							<b><span class="cityTitle">张家界</span></b>

						</p>
					</li>
				</ul>
				<ul class="f2">
				<s:if test="#session.existUser == null">
					<li class="login" id="login">
						欢迎来到易捷厨房
						<a target="_blank" href="${ pageContext.request.contextPath }/user_loginPage.action">登陆</a>&nbsp;&nbsp;
						<a target="_blank" href="${ pageContext.request.contextPath }/user_registPage.action">免费注册</a>
					</li>
				</s:if>
				<s:else>
					<li class="myorder">
					<s:property value="#session.existUser.name"/>
					</li>
					<li class="myorder">
					<a target="_blank" class="area" href="${ pageContext.request.contextPath }/order_findByUid.action?page=1">我的订单</a>
					</li>
					<li class="myorder"><a href="${ pageContext.request.contextPath }/user_quit.action">退出</a>|
			         </li>	
			</s:else>		
			
					<li class="ma">
						<a target="_blank" href="#" class="area">我的优选</a>
					</li>
					<li class="mobile">
						<a target="_blank" href="#" class="area">移动客户端</a>
					</li>
					<li class="ma">
						<a target="_blank" href="#" class="area">帮助中心</a>
					</li>
					<li class="webnav">
						<a target="_blank" href="#" class="area">网站导航</a>
					</li>
					<li class="sh">
						<a target="_blank" href="#" title="关注我们微信下单更加方便" id="weshare"><img src="img/WeChatlogo.png"></a>
						<div id="we" class="we">
							<em>&#9670;</em>
							<span>&#9670;</span>
							<div style="color: #93BF50;line-height: 20px;padding: 0 15px 0 15px;">请关注微信公众号</div>
							<img src="img/qcode.jpg" style="display:block;width: 100px;height: 100px;margin: 0 auto;padding: 5px;" />
						</div>
					</li>
				</ul>

			</div>
			
		</div>
		<div class="header">
			<div class="logo" style="overflow: visible;margin:-5px 70px 50px"><img src="img/logo.png" style="width:240px;height:104px ;" /></div>
		</div>