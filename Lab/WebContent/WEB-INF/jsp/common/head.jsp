<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!-- head start  -->
       <div class="navbar" role="navigation">
	
		<div class="container-fluid">		
			
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a href="#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
				<!--  <li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>			
			-->
			</ul>
			
	        <ul class="nav navbar-nav navbar-right">
	
				<li class="dropdown visible-md visible-lg">
	        		欢迎您：${admin.username}<a href="<%=basePath%>admin/index.action" class="dropdown-toggle" ></a>
	      		</li>
				<li><a href="<%=basePath%>admin/index.action"><i class="fa fa-power-off"></i></a></li>
			</ul>
			
		</div>
		
	</div>
<!-- head end -->