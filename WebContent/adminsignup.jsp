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
<form action="<%=request.getContextPath()%>/adminsignup" method="post">
<h1>adminsignup</h1>
<input type="text"name = "uname" placeholder="Enter admin name"required="required"/><br><br>
<input type="password"name = "uid" placeholder="Enter admin id"required="required"/><br><br>
<input type="password"name = "upass" placeholder="Enter admin password"required="required"/><br><br>
<input type="text"name = "cityname" placeholder="Enter admin cityname"required="required"/><br><br>
<input type="number"name = "mobile" placeholder="Enter admin mobile"required="required"/><br><br>
<input type="submit" value = "login"><br><br>
<a href="usersignup.jsp">userlogin</a>&nbsp;&nbsp;
<a href= "adminlogin.jsp">adminlogin</a>&nbsp;&nbsp;

</form>
</center>


</body>
</html>