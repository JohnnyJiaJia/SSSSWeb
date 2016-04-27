<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>汽车4S店管理平台</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.12.3.min.js"></script>
    <script src="js/extendPagination.js"></script>
  </head>

  <body>
	<script>
	$(function ()
	{ $("#example_bottom").popover({placement:'bottom',title: '${session.user["username"]}', content: ' ${session.user["post"]} ${session.user["usex"]}'});
	});
	</script>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="main.jsp">4S店管理平台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="main.jsp">主页</a></li>
            <li><a href="#" id="example_bottom" rel="popover" >个人资料</a></li>
            <li><a href="index.jsp">退出登录</a></li>
          </ul>
          <form class="navbar-form navbar-right" action="selectuser">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="#">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Analytics</a></li>
            <li><a href="#">Export</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Nav item</a></li>
            <li><a href="">Nav item again</a></li>
            <li><a href="">One more nav</a></li>
            <li><a href="">Another nav item</a></li>
            <li><a href="">More navigation</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="selectAllUser.action" >查找员工</a></li>
            <li><a href="">增加员工</a></li>
            <li><a href="">编辑员工</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">员工列表</h1>
          <table class="table table-hover piece" style="margin-left: 0;">
          <thead>
          	<tr>
          		<th>ID</th>
          		<th>姓名</th>
          		<th>性别</th>
          		<th>职位</th>
          	</tr>
          </thead>
          <tbody>
          	<s:iterator value="list" >  
       		<tr>  
          		<td><s:property value="userid"/></td>  
          		<td><s:property value="username"/></td>  
          		<td><s:property value="usex"/></td>  
          		<td><s:property value="post"/></td>  
       		</tr>  
    		</s:iterator>  
          </tbody>
          </table>
          	<s:url id="url_pre" value="selectAllUser">  
         		<s:param name="pageNow" value="pageNow-1"></s:param>  
     		</s:url>  
  
     		<s:url id="url_next" value="selectAllUser">  
         		<s:param name="pageNow" value="pageNow+1"></s:param>  
     		</s:url>    
  
     		<s:a href="%{url_pre}">上一页</s:a>  
       
     		<s:iterator value="students" status="status">
        	<s:url id="url" value="selectAllUser">  
            	<s:param name="pageNow" value="pageNow"/>  
        	</s:url>  
     		</s:iterator>  
  
     		<s:a href="%{url_next}">下一页</s:a>   
        </div>
      </div>
    </div>
  </body>
</html>	