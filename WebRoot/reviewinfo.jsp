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
<title>Review info</title>


</head>
<body>
<div class="jumbotron" style="background-color:#006699">
</div>
<div class="panel panel-default">
  <div class="panel-body">
    <%List list = (List)request.getAttribute("list"); %>
    <table class="table">

        <thead style="background-color:#006699;color:#FFFFFF">
            <th>Opinions</th>
           
        </thead>
        <c:forEach var="tmp" items = "${list}">
    	<tbody>
            <tr>
                <td>${tmp.FIRST_JUDGE}</td>
                
			</tr>
        </tbody>
    	</c:forEach>
        
    </table>
  </div>
</div>
<%int id = Integer.parseInt(request.getAttribute("id").toString()); %>

</body>
</html>