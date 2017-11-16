<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="utf-8" />
  <base href="<%=basePath%>">
<title>异常</title> 

<script src="<%=basePath%>/assets/js/jquery-2.1.1.min.js"></script>
    <style type="text/css"> 
        body { background-color: #fff; color: #666; text-align: center; font-family: arial, sans-serif; }
        div.dialog {
            width: 80%;
            padding: 1em 4em;
            margin: 4em auto 0 auto;
            border: 1px solid #ccc;
            border-right-color: #999;
            border-bottom-color: #999;
        }
        h1 { font-size: 100%; color: #f00; line-height: 1.5em; }
    </style> 
</head> 
<body> 

  <div class="dialog"> 
    <h1>信息不完整或者权限不够</h1> 
    <p>对不起， 不能获取您的信息，请完善信息</p> 
    <a href="javascript:history.back(-1)">返 回</a>     
  </div>
  
</body> 
</html>
