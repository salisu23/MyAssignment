<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.hw.entity.JournalInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
<link href="bootstrap-3.2.0/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript">
		function validate()
		{
			var title = document.getElementById("title").value;
			var keywords = document.getElementById("keywords").value;
			var author = document.getElementById("author").value;
			var abstracts = document.getElementById("abstract").value;
			var author = document.getElementById("author").value;
			var comauthor = document.getElementById("comAuthor").value;
			var mail = document.getElementById("mail").value;
			var upload = document.getElementById("upload").value;
			
			if(title == "" || author == "" || comauthor == "" || mail == "" || upload == "" || abstracts == "" || keywords == "")
			{
				alert("Please fill in the blanks!");
			}
			else
			{
				alert("Success!Please remember your id:" + mail + "\ndefault password:123456");
				document.getElementById("form1").submit();
			}
		}
	</script>		
    </head>

<body>
<%JournalInfo info = (JournalInfo)request.getAttribute("info"); %>
<div class="jumbotron" style="background-color:#006699">
  <h1 align="" style="color:#FFFFFF;padding-left:380px"></h1>
</div>
  <form action="submit_article_info" method="post" id = "form1">  

    <table class="table"  align="center">
      <tr>
         <td align="right"> Title    </td>
		 <td> <input type="text"  name="title" id="title"/> </td>
	 </tr>
     <tr>
         <td align="right">   KeyWords  </td>
		 <td>  <input type="text"  name="keywords" id="keywords"/>    </td>
	 </tr>
	  <tr>
         <td align="right">  Author   </td>
		 <td>   <input type="text"  name="author" id="author"/>   </td>
	 </tr>
	  <tr>
         <td align="right"> Abstract    </td>
		 <td>   <textarea rows="10" cols="30" name="abstract" id="abstract">  </textarea> </td>
	 </tr>
	  <tr>
         <td align="right">   Upload  </td>
		 <td>    <input type="file"  name="upload" id="upload"/>  </td>
	 </tr>
      <tr>
         <td align="right">  Journal   </td>
		 <td>    ${info.NAME}<br><input type="hidden" value="${info.ID }" name="id"/>  </td>
	 </tr>
	  <tr>
         <td align="right">  Communicate Author   </td>
		 <td>    <input type="text"  name="comauthor" id="comAuthor"/>  </td>
	 </tr>

    <tr>
         <td align="right">  Mail   </td>
		 <td>    <input type="text"  name="mail" id="mail"/>  </td>
	 </tr>	 
    </table>

<input type="button"  style="margin-left:520px" value="Submit" onclick="validate()"/>
  		</form>
</body>
</html>
</body>
</html>