<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="<%=basePath%>">
 <meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>西电图书馆</title>	
		
        <!--[if lt IE 9]>
<link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
<![endif]-->

		<!-- Favicon and touch icons -->
 <link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" /> 

	    <!-- Css files -->
 <link href="<%=basePath%>/assets/css/bootstrap.min.css" rel="stylesheet">		
 <link href="<%=basePath%>/assets/css/jquery.mmenu.css" rel="stylesheet">		
 <link href="<%=basePath%>/assets/css/font-awesome.min.css" rel="stylesheet">
 <link href="<%=basePath%>/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">			    
 <link href="<%=basePath%>/assets/css/style.min.css" rel="stylesheet">
 <link href="<%=basePath%>/assets/css/add-ons.min.css" rel="stylesheet">
		<style>
			footer {
				display: none;
			}
		</style>

	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
</head>
<body>
	<div class="container-fluid content">
		<div class="row">
			<div id="content" class="col-sm-12 full">
				<div class="row">
					<div class="login-box">
					
						<div class="header">
						<strong>欢迎来到西安电子科技大学图书馆</strong>
						</div>	
						<div>
						  &nbsp;
						  <br><br>
						</div>		
						<form class="form-horizontal login" action="admin/submit.action" method="post">
						
							<fieldset class="col-sm-12">
								<div class="form-group">
									<div class="controls row">
										<div class="input-group col-sm-12">	
											<input type="text" class="form-control" name="username" id="username" placeholder="Username"/>
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
										</div>	
									</div>
								</div>
							
								<div class="form-group">
									<div class="controls row">
										<div class="input-group col-sm-12">	
											<input type="password" class="form-control" name="password" id="password" placeholder="Password"/>
											<span class="input-group-addon"><i class="fa fa-key"></i></span>
										</div>	
									</div>
								</div>
								
								<div class="form-group">
									<div class="controls row">
										<div class="input-group col-sm-12">	
											<input type="text" class="form-control" name="office" id="office" placeholder="office like #楼#室"/>
											<span class="input-group-addon"><i class="fa fa-building-o"></i></span>
										</div>	
									</div>
								</div>

								<div class="confirm">
									<input type="checkbox" name="remember"/>
									<label for="remember">记住我</label>
								</div>	

								<div class="row">
							
									<button type="submit" class="btn btn-lg btn-primary col-xs-12">登录</button>
							
								</div>
								
							</fieldset>	

						</form>
					<!--  
						<a class="pull-left" href="page-login.html#">忘记密码?</a>
						<a class="pull-right" href="page-register.html">注册!</a>
					-->
						<div class="clearfix"></div>				
						
					</div>
				</div><!--/row-->
		
			</div>	
			
		</div><!--/row-->				
		
	</div><!--/container-->
		
		
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
	
	<!-- theme scripts -->
	<script src="<%=basePath%>/assets/js/SmoothScroll.js"></script>
	<script src="<%=basePath%>/assets/js/jquery.mmenu.min.js"></script>
	
	<!-- end: JavaScript-->
	
</body>
</html>