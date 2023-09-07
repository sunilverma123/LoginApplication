<%@ page import = "com.util.Utility" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<%
int k=Utility.parse(request.getParameter("no"));
if(k==4)
{
	
%>
<script type="text/javascript">
alert("signup process done sucessfully");
</script>
<%
}
%>
<center>
<img alt="" src="cooltext430003487421894.png">
<form action="#" type = "get">
<h1>userlogin</h1>
<input type="text"name = "id" placeholder="Enter user id"required="required"/><br><br>
<input type="password"name = "password" placeholder="Enter user password"required="required"/><br><br>
<input type="submit" value = "login"><br><br>
<a href="userlogin.jsp">userlogin</a>&nbsp;&nbsp;
<a href= "adminlogin.jsp">adminlogin</a>&nbsp;&nbsp;

</form>
</center>

</body>
</html>