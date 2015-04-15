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
  </div>
</nav>
<div class="jumbotron" style="background-color:#006699">
  <h1 align="center" style="color:#FFFFFF">Articles</h1>
</div>
<div class="panel panel-default">
  <div class="panel-body">
    <%List list = (List)request.getAttribute("list"); %>
    <table class="table">

        <thead style="background-color:#006699;color:#FFFFFF">
            <th>Title</th>
            <th>Author</th>
            <th>Key words</th>
            <th>Abstract</th>
        </thead>
        <c:forEach var="tmp" items = "${list}">
    	<tbody>
            <tr>
                <td>${tmp.TITLE}</td>
                <td>${tmp.AUTHOR}</td>
                <td>${tmp.KEYWORDS}</td>
			<td><a href = "view_abstract?id=${tmp.ID }">View</a>&nbsp;&nbsp;<a href = "download?url=${tmp.FIRST_URL}">Download</a></td>
            </tr>
        </tbody>
    	</c:forEach>
        
    </table>
  </div>
</div>
</body>
</html>