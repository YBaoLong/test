<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- start: Main Menu -->
			<div class="sidebar ">
								
				<div class="sidebar-collapse">
					<div class="sidebar-header t-center">
                       <h2> 图书馆刷卡管理系统</h2>
                       
                    </div>										
					<div class="sidebar-menu">						
						<ul class="nav nav-sidebar">
							
							<li>
								<a href="#"><i class="fa fa-file-text"></i><span class="text">读者管理</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="<%=basePath%>user/inform.action"><i class="fa fa-car"></i><span class="text">刷卡记录</span></a></li>
									<li><a href="<%=basePath%>user/tofind.action"><i class="fa fa-envelope"></i><span class="text">查找记录</span></a></li>
									<!-- 
									<li><a href="#"><i class="fa fa-credit-card"></i><span class="text"> XXX</span></a></li>
									<li><a href="#"><i class="fa fa-heart-o"></i><span class="text"> XXX</span></a></li>
									<li><a href="#"><i class="fa fa-columns"></i><span class="text"> XXX</span></a></li>
									<li><a href="#"><i class="fa fa-puzzle-piece"></i><span class="text"> XXX</span></a></li>
                                     -->
								</ul>	
							</li>
							<li>
								<a href="#"><i class="fa fa-list-alt"></i><span class="text">管理员管理</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="<%=basePath%>admin/maginform.action"><i class="fa fa-indent"></i><span class="text">管理员信息</span></a></li>
									<li><a href="<%=basePath%>admin/add.action"><i class="fa fa-tags"></i><span class="text">添加管理员</span></a></li>
									<!--  
									<li><a href="#"><i class="fa fa-plus-square-o"></i><span class="text">修改管理员</span></a></li>
									<li><a href="#"><i class="fa fa-pencil"></i><span class="text">删除管理员</span></a></li>
								    -->
								</ul>
							</li>
							
							
							<li><a href="<%=basePath%>admin/crash.action"><i class="fa fa-life-bouy"></i><span class="text">刷卡界面</span></a></li>
							
						</ul>
					</div>					
				</div>
				<div class="sidebar-footer">					
					
					<div class="sidebar-brand">
						西安电子科技大学图书馆
					</div>
					
					<div class="copyright text-center">
						<small>copy &copy;2017<a href="http://lib.xidian.edu.cn/" title="网页模板" target="_blank">西安电子科技大学图书馆</a></small>
					</div>					
				</div>	
				
			</div>
			<!-- end: Main Menu -->