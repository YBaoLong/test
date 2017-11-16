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
<link rel="stylesheet" type="text/css" href="styles/clicki.web.css" media="screen" />
<link rel="stylesheet" type="text/css" href="styles/clicki.loginandreg.css" media="screen" />
<link rel="stylesheet" type="text/css" href="styles/clicki.webkitanimation.css" media="screen" />

<title>实验室刷卡管理系统</title>
<!--[if lte IE 9 ]><link rel="stylesheet" href="resources/styles/clicki.iehotfix.css?V=20120501" /><![endif]-->
<!--[if lte IE 9]>
<style>
body {background:#2f7fb2 url(resources/styles/images/topbg_01.png?V=20120501) top center no-repeat;}
html{height:100%;overflow:hidden;background:#2f7fb2 url(resources/styles/images/topbg_01.png?V=20120501) top center no-repeat;}
</style>
<![endif]-->
</head>
<body>
<h1>图书馆刷卡系统</h1>
<div class="theCenterBox" style="">
  <div class="theLoginBox">
    <div class="loginTxt">登录</div>
    <div class="theLoginArea" id="loginBox">
      <form id="leftForm" action="${pageContext.request.contextPath }/admin/login.action" method="post">
        <p style="position: relative;">
          <label for="number">账号：</label>
          <input placeholder="请输入您的账号" name="username" id="username" type="text" maxlength="255" />
          <span>请输入您的账号</span> 
        </p>
        <p style="position: relative;">
          <label for="password">密码：</label>
          <input placeholder="请输入您的密码" name="password" id="password" type="password" maxlength="16" />
          <span>请输入您的密码</span> 
        </p>
                  
        <div class="loginSubmitBnt fixPadding">
          <div>
            <input id="autoLogin" class="theRememberMe" name="LoginForm[rememberMe]" checked="checked" type="checkbox" />
            <label class="theRememberMeLabel" for="autoLogin">记住用户名和密码</label>
            <div class="login_submit">
              <input name="userSubmit" class="theSubmitButton" value="" type="submit" />
              <input class="forgotPasswordEm"><a href="<%=basePath%>admin/reg.action" title="马上注册">马上注册</a>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
 <script type="text/javascript">
        document.getElementById("username").focus();
 </script>
</body>
</html>
