<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>

<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="<%=basePath%>/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="styles/clicki.web.css" media="screen" />
<link rel="stylesheet" type="text/css" href="styles/clicki.loginandreg.css" media="screen" />
<link rel="stylesheet" type="text/css" href="styles/clicki.webkitanimation.css" media="screen" />
<title>图书馆刷卡系统</title>

<!--[if lte IE 9 ]><link rel="stylesheet" href="resources/styles/clicki.iehotfix.css?V=20120501" /><![endif]-->
<!--[if lte IE 9]>
<style>
body {background:#2f7fb2 url(resources/styles/images/topbg_01.png?V=20120501) top center no-repeat;}
html{height:100%;overflow:hidden;background:#2f7fb2 url(resources/styles/images/topbg_01.png?V=20120501) top center no-repeat;}
</style>
<![endif]-->
</head>
<body>

<div class="theCenterBox" style="">
  <style>
.theCenterBox{width:670px; margin-top:20px;}
</style>
  <h1>图书馆刷卡系统</h1>
  <div class="theLoginBox" style="width:657px">
    <div class="loginTxt">注册账号</div>
    <form id="leftForm" action="login/reg.action" method="post">
      <div class="theLoginArea" id="loginBox">
        <p style="position: relative;">
          <label>账号：</label>
          <input placeholder="请输入您的账号" name="number" type="text" maxlength="255" />
          <span>请输入您的邮箱</span> 
        </p>
        <p style="position: relative;">
          <label>密码：</label>
          <input placeholder="请输入您的密码" name="password"  type="password" maxlength="16" />
          <span>请输入您的密码</span>
        </p> 
        <div class="loginSubmitBnt">
          <div class="reg_submit">
            <input name="userSubmit" class="theSubmitButton" value="提交" type="submit" />
          </div>
        </div>
      </div>
    </form>
  </div>
  
</div>
</body>
</html>
