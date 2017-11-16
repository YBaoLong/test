<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
   String path = request.getContextPath();  
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
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
					<h3 class="page-header"><i class="fa fa-heart-o"></i>欢迎来到图书馆${office}</h3>
					
				</div>
			</div>

			<div class="row profile">
				
				<div class="col-md-5">
					
					<div class="panel panel-default">
						
						<div class="panel-body">
							
						    <h4><strong>请刷卡</strong></h4>
							
							<div class="text-center">
								<img class="img-profile" src="<%=basePath%>/assets/img/img_avatar.png">
							</div>
							
			
						</div>	
						
					</div>
				
				</div><!--/.col-->
				<div class="col-md-7">
				
                    <div class="panel panel-default">                               
                        <div class="panel-heading">
                            <h2><i class="fa fa-heart-o red"></i><strong>读者信息</strong></h2>
                        </div>
                        
                    </div>
					
				</div><!--/.col-->
			
			</div><!--/.row profile-->	
						
		</div>
		<!-- end: Content -->
		<br><br><br>
		
		
	</div><!--/container-->
	
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