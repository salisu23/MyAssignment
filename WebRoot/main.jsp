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
<script type="text/javascript">
		function validate()
		{
			var mail = document.getElementById("mail").value;
			var password = document.getElementById("password").value;
			if(mail == "" || password == "")
			{
				alert("Please fill in the blanks!");
			}
			else
			{
				document.getElementById("form2").submit();
			}
		}
	</script>	
    </head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
<form class="navbar-form navbar-right" role="search" action="login" method = "post" id = "form2">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="mail" id= "mail" name="mail">
    <input type="password" class="form-control" placeholder="password" id= "password" name="password">
  </div>
  <button type="button" class="btn btn-default" onclick="validate()">Login</button>
</form>
  </div><!-- /.container-fluid -->
</nav>
<div class="jumbotron" style="background-color:#006699">
  <h1 align="center" style="color:#FFFFFF">Self resourcing electronic journal</h1>
</div>
<form action="search" method = "post" id = "form1" >
<div class="panel panel-default">
  <div class="panel-body">
      <div class="col-md-3 col-md-offset-4">  
      <input  class="form-control" type="text" name="searchtext"/>
      </div>
      <div class="col-md-2">
        <input  class="btn btn-primary" type="submit" value="Search">
       </div>
    <div class="col-md-offset-5" style="clear:both">
        <input type="radio" checked = "true" name="type" value = "1"/>Journal
        <input type="radio" name="type" value = "2"/>Article
        <input type="radio" name="type" value = "3"/>Category
        <input type="radio" name="type" value = "4"/>Author
    </div>
</form>
    <hr>
    <h3 align = "center">Recent Journals</h3>
    <%List list = (List)request.getAttribute("list"); %>
    <table class="table">
    
        <thead style="background-color:#006699;color:#FFFFFF">
            <th>Name</th>
            <th>Journal</th>
            <th>Issue date</th>
            <th>Articles</th>
        </thead>
        <c:forEach var="tmp" items = "${list}">
    	<tbody>
            <tr>
                <td><a href="article_list_of?issn=${tmp.ISSN}&journal=${tmp.NAME}">${tmp.NAME}</a></td>
                <td>${tmp.refJOURNALINFO.NAME }</td>
                <td>${tmp.ISSUE_DATE }</td>
			<td>${tmp.ARTICLES }</td>
            </tr>
        </tbody>
    	</c:forEach>
        
    </table>
  </div>
</div>
<h4 align = "center"><a href="journal_info">Click here to contribute</a></h4>
</body>
</html>