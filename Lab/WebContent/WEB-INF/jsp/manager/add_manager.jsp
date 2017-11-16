<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<h3 class="page-header"><i class="fa fa-pencil"></i>添加管理员</h3>
					
				</div>
			</div>
			<div class="invoice">
			<div class="col-md-12">	
				<div class="panel panel-default">
			            <div class="panel-heading">
			                <h2><i class="fa fa-indent red"></i><strong>填写管理员信息</strong></h2>
			            </div>
			            <div class="panel-body">
							<form action="admin/addAdmin.action" method="post">
				                <div class="form-group">
				                    <label for="username">用户名</label>
				                    <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名">
				                    
				                </div>
				                <div class="form-group">
				                    <label for="password">密码</label>
				                    <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码">
				                    
				                </div>
				                <div class="form-group">
				                    <label for="passwordagain">再次输入密码</label>
				                    <input type="password" id="passwordagain" name="passwordagain" class="form-control" placeholder="请再次输入密码">
				                    
				                </div>
				                 
				                 <div class="form-group">
				                    <label class="control-label" for="managerprivate">管理员权限</label>
				                    <div>
				                       <select id="managerprivate" name="managerprivate" class="form-control">
				                         <option>超级管理员</option>
				                         <option>普通管理员</option>
				                       </select>
				                    </div> 
				                </div>
				                
				                <div class="panel-group">
		                            <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-dot-circle-o"></i>提交</button>
	                                <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i>重置</button>
		                       </div>
				            </form>
				            <!-- 
						</div>
						<div class="panel-footer">
		                    <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-dot-circle-o"></i> Submit</button>
	                        <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> Reset</button>
		                </div>
		                 -->
			        </div>

			</div><!--/invoice-->		
		</div>
		</div>
		<!-- end: Content -->
		<br><br><br>			
		
		
		
	</div><!--/container-->
		
	
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Modal title</h4>
				</div>
				<div class="modal-body">
					<p>Here settings can be configured...</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
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
	
	
	<!-- end: JavaScript-->
	
    
  </body>
</html>