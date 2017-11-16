<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="common" uri="http://lab/common/"%>
<%
   String path = request.getContextPath();  
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <base href="<%=basePath%>">  
        <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>西电图书馆</title>		
		
        <!--[if lt IE 9]>
<link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
<![endif]-->

		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="<%=basePath%>/assets/ico/favicon.ico" type="image/x-icon" /> 

	    <!-- Css files -->
	    <link href="<%=basePath%>/assets/css/bootstrap.min.css" rel="stylesheet">		
		<link href="<%=basePath%>/assets/css/jquery.mmenu.css" rel="stylesheet">		
		<link href="<%=basePath%>/assets/css/font-awesome.min.css" rel="stylesheet">
		<link href="<%=basePath%>/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">	   
	    <link href="<%=basePath%>/assets/css/style.min.css" rel="stylesheet">
		<link href="<%=basePath%>/assets/css/add-ons.min.css" rel="stylesheet">		

	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
</head>
  <body>
   <!-- start Header -->
  <jsp:include page="../common/head.jsp"></jsp:include>
   <!-- end: Header -->
	
	<div class="row">
				
			<!-- start: left Menu -->
			<jsp:include page="../common/left.jsp"></jsp:include>
			<!-- end: left Menu -->
						
		<!-- start: Content -->
		<div class="main ">
            
            <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-pencil"></i>管理员信息</h3>
					
				</div>
			</div>
			<div class="invoice">
				
				<div class="panel panel-default">
					<div class="panel-body">
						<table class="table table-striped table-responsive">
							<thead>
								<tr>
								    
									<th class="center">序号</th>
									<th class="center">用户名</th>
									<th class="center">密码</th>
									<th class="center">权限</th>
									<th class="center">管理员操作</th>
									<!--  
									<th class="right">学院</th>
									<th class="right">入馆时间</th>   
									-->                                       
								</tr>
							</thead>   
							<tbody>
							
				<c:forEach items="${pageBean.list}" var="list" varStatus="status">
								<tr>
								   
									<td class="center">${list.id}</td>
									<td class="center">${list.username}</td>
									<td class="center">${list.password}</td>
									<th class="center">${list.authority}</th>
									<td class="center">
									  <button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myModal" onclick="editUser(${list.id})">修改</button>
							          <button type="button" class="btn btn-danger btn-xs" onclick="delUser(${list.id})">删除</button>                                   
								    </td>
									                                     
								</tr>
				</c:forEach>
							</tbody>
						</table>
						<!-- 分页 -->
						<div class="col-md-12 text-right">
						   <common:page url="admin/maginform.action" />
					   </div>

					</div>
				</div>	

			</div><!--/invoice-->		
			
		</div>
		<!-- end: Content -->
		<br><br><br>			
		
		
		
	</div><!--/container-->
		
	
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">修改管理员信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_admin_form">
					  <input type="hidden" id="id" name="id"/>
					    <div class="form-group">
							<label for="username" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="username" placeholder="用户名" name="username">
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="password" placeholder="密码" name="password">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateUser()">提交</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="clearfix"></div>
	
		
	<!-- start: JavaScript-->
	<!--[if !IE]>-->

			<script src="<%=basePath%>/assets/js/jquery-2.1.1.min.js"></script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<![endif]-->

	<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=basePath%>/assets/js/jquery-2.1.1.min.js'>"+"<"+"/script>");
		</script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='assets/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
		</script>
		
	<![endif]-->
	<script src="<%=basePath%>/assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="<%=basePath%>/assets/js/bootstrap.min.js"></script>	
	
	
	<!-- page scripts -->
	<script src="<%=basePath%>/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	
	<!-- theme scripts -->
	<script src="<%=basePath%>/assets/js/SmoothScroll.js"></script>
	<script src="<%=basePath%>/assets/js/jquery.mmenu.min.js"></script>
	<script src="<%=basePath%>/assets/js/core.min.js"></script>
	
	<!-- delete user -->
	<script type="text/javascript">
	   function delUser(id) {
			if(confirm('确实要删除该信息吗?')) {
				$.post("<%=basePath%>admin/deluser.action",{"id":id},function(data){
					alert("删除成功！");
					window.location.reload();
				});
			}
		}
	   function editUser(id) {
			
			$.ajax({
				type:"post",
				url:"<%=basePath%>admin/detail.action",
				data:{"id":id},
				success:function(data) {
					
					$("#id").val(data.id);
					$("#username").val(data.username);
					$("#password").val(data.password);
					
				},
				error:function(){
					alert("查询失败")
				}
			});
		}
	   function updateUser() {
			var user ={"id":          $("#id").val(),
	     			   "username":    $("#username").val(),
	     		       "password":    $("#password").val(),
	     	}; 
		      $.ajax({
		    	 type: "post",
		    	 contentType: "application/json; charset=utf-8",
		    	 url:"<%=basePath%>admin/update.action",
		         data: JSON.stringify(user),
		         success : function(){
		        	alert("信息更新成功！");
					window.location.reload();
		        },
		        error : function(){
		    	    alert("更新失败");
		        }
		    });
		}
	</script>
	<!-- end: JavaScript-->
	
    
  </body>
</html>