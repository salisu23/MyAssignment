<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language = "java" import = "java.util.*"%>
<head>
<link href="bootstrap-3.2.0/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home page</title>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
  </div>
</nav>
<div class="jumbotron" style="background-color:#006699">
  <h1 align="center" style="color:#FFFFFF">Articles published</h1>
</div>
<div class="panel panel-default">
  <div class="panel-body">
    <%List publishedList = (List)request.getAttribute("publishedList"); %>
    <table class="table">

        <thead style="background-color:#006699;color:#FFFFFF">
            <th>Title</th>
            <th>Key words</th>
            <th>Journal</th>
            <th>Start page</th>
            <th>Abstract</th>
        </thead>
        <c:forEach var="tmp" items = "${publishedList}">
    	<tbody>
            <tr>
                <td>${tmp.TITLE}</td>
                <td>${tmp.KEYWORDS}</td>
                <td>${tmp.JOURNAL_NAME}</td>
                <td>${tmp.START_PAGES}</td>
			<td><a href = "view_abstract?id=${tmp.ID }">View</a>&nbsp;&nbsp;<a href = "download?url=${tmp.SECOND_URL}">Download</a></td>
            </tr>
        </tbody>
    	</c:forEach>
        
    </table>
  </div>
</div>
<div class="jumbotron" style="background-color:#006699">
  <h1 align="center" style="color:#FFFFFF">My reviewing articles</h1>
</div>
<div class="panel panel-default">
  <div class="panel-body">
    <%List reviewList = (List)request.getAttribute("reviewList"); %>
    <table class="table">

        <thead style="background-color:#006699;color:#FFFFFF">
            <th>Title</th>
            <th>Key words</th>
            <th>Journal</th>
            <th>Status</th>
            <th>Information</th>
        </thead>
        <c:forEach var="tmp" items = "${reviewList}">
    	<tbody>
            <tr>
                <td>${tmp.TITLE}</td>
                <td>${tmp.KEYWORDS}</td>
                <td>${tmp.JOURNAL_NAME}</td>
                <td>${tmp.refARTICLE_STATUS.NAME}</td>
			<td><a href = "reviewinfo?id=${tmp.ID }">View</a></td>
            </tr>
        </tbody>
    	</c:forEach>
        
    </table>
  </div>
</div>

<div class="jumbotron" style="background-color:#006699">
  <h1 align="center" style="color:#FFFFFF">Articles to review</h1>
</div>
<div class="panel panel-default">
  <div class="panel-body">
    <%List auditList = (List)request.getAttribute("auditList"); %>
    <table class="table">

        <thead style="background-color:#006699;color:#FFFFFF">
            <th>Title</th>
            <th>Key words</th>
            <th>Journal</th>
            <th>Download</th>
            <th>Operations</th>
        </thead>
        <c:forEach var="tmp" items = "${auditList}">
    	<tbody>
            <tr>
                <td>${tmp.TITLE}</td>
                <td>${tmp.KEYWORDS}</td>
                <td>${tmp.JOURNAL_NAME}</td>
                <td><a href="download?url=${tmp.FIRST_URL}">Download</a></td>
			<td><a href = "review?id=${tmp.ID }">Click here</a></td>
            </tr>
        </tbody>
    	</c:forEach>
        
    </table>
  </div>
</div>
</body>
</html>