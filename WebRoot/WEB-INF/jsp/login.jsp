<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>登陆界面</title>
		
		<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/login.css" />
		<script type="text/javascript" src="js/login.js" ></script>
		
		
		
	</head>
	<body onload="createCode()">
		<div class="header">
			<a href="#" target="_blank">
				<img src="img/logo.png"  style="height: 150px; width: 300px;"/>	
			</a> 
			<span>欢迎登陆</span>
		</div>
		<div class="clear"></div>
		<div class="login-main">
			<div class="pic" style="padding-top: 14px;float: left;">
				<img src="img/loginpic.jpg" style="width: 500px;" />
			</div>
			
			<div class="login">
				<a href="${ pageContext.request.contextPath }/user_registPage.action" class="register">免费注册</a>
			</div>
			<form id="loginForm" action="${ pageContext.request.contextPath }/user_login.action"  method="post" novalidate="novalidate"> 
			<div class="login-box">
				<ul>
					<li>
						<span class="title">用户名</span>
						<span class="border">
							<input type="text" name="username" id="username" class="loginText" placeholder="请输入用户名"/>
							<em style="background: url(img/icon1.jpg) center no-repeat; float: left;height: 40px;width: 33px;margin-left: 20px;"></em>
						</span>
						
					</li>
					<li>
						<span class="title" style="margin-left: -320px;">密码</span>
						<span class="border">
							<input type="password" name="password" id="password" class="loginText"  placeholder="请输入密码"/>
							<em style="background: url(img/icon2.jpg) center no-repeat; float: left;height: 40px;width: 33px;margin-left: 20px;"></em>
						</span>
						
					</li>
					<li id="scode" class="scode">
						<span class="title" style="margin-left: -320px;">验证码</span>
			<!--			<span class="border-code">-->
				<span class="border" style="width: 150px;">
						<input class="logincode" name="logincode" maxlength="6" id="logincode" placeholder="请输入验证码"/>
						<div style="float: left;margin-left: 130px;margin-top: -37px;">
						<input type="text" onclick="createCode()" readonly="readonly" id="checkCode"  style="width: 110px;margin-left: 45px;"  />  
				        </div>
						<div class="code-title">看不清？
							<a href="javascript:void(0)" onclick="createCode()">换一换</a>
						</div>
				</span>
					</li>
					<li class="bt-5">
						<input type="submit" class="bt" value="登陆"  onclick="validate();"  />
					</li>
				</ul>
				
			</div>
			</form>
		</div>
		
		
		
	</body>
</html>
