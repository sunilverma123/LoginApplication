<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<center>
<img alt="" src="cooltext430003487421894.png">
<form action="<%=request.getContextPath()%>/adminlogin" method = "post">
<h1>adminlogin</h1>
<input type="text"name = "aid" placeholder="Enter admin id"required="required"/><br><br>
<input type="password"name = "apass" placeholder="Enter admin password"required="required"/><br><br>
<input type="submit" value = "login"><br><br>
<a href="usersignup1.jsp">userlogin</a>&nbsp;&nbsp;
<a href= "index.jsp">adminlogin</a>&nbsp;&nbsp;

</form>
</center>


</body>
</html>