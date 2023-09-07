<%@ page import="com.util.Utility" language="java" contentType="text/html; charset=ISO-8859-1"
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
if(k==3)
{
	
%>
<script type="text/javascript">
alert("someting went wrong signup again");
</script>
<%
}
%>
<center>
<img alt="" src="cooltext430003487421894.png">
<form action="<%=request.getContextPath()%>/Usersignup" method="post">
<h1>usersignup1</h1>
<input type="text"name = "uname" placeholder="Enter user name"required="required"/><br><br>
<input type="text"name = "uid" placeholder="Enter user id"required="required"/><br><br>
<input type="password"name = "upass" placeholder="Enter user password"required="required"/><br><br>
<input type="text"name = "ucity" placeholder="Enter user cityname"required="required"/><br><br>
<input type="number"name = "ucontact" placeholder="Enter user contact"required="required"/><br><br>
<input type="submit" value= "signup"/><br><br>
<a href="usersignup.jsp">userlogin</a>&nbsp;&nbsp;
<a href= "adminlogin.jsp">adminlogin</a>&nbsp;&nbsp;

</form>
</center>
</body>
</html>