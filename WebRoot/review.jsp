<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language = "java" import = "java.util.*"%>
<html>
    <head>
<link href="bootstrap-3.2.0/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

    </head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->

  </div><!-- /.container-fluid -->
</nav>
<%int id = Integer.parseInt(request.getAttribute("id").toString());%>
<form action="submitjudge" method = "post" id = "form" >
<div class="panel panel-default">
  <div class="panel-body">
    <div class="col-md-offset-5" style="clear:both">
    	<input type="hidden" name="id" value="${id }"/>
        <input type="radio" checked = "true" name="type" value = "1"/>Champion
        <input type="radio" name="type" value = "0.5"/>Favorable
        <input type="radio" name="type" value = "-0.5"/>Indifferent
        <input type="radio" name="type" value = "-1"/>Detractor
        <input  class="btn btn-primary" type="submit" value="Submit">
       </div>
</form>
    
</body>
</html>