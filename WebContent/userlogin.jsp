<%@ page import="com.util.Utility" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<%
int k=Utility.parse(request.getParameter("no"));
if(k==1)
{
	
%>
<script type="text/javascript">
alert("your id or password may be wrong");
</script>
<%
}
%>
<center>
<img alt="" src="cooltext430003487421894.png">
<form action="<%=request.getContextPath()%>/userlogin" method="post">
<h1>userlogin</h1>
<input type="text" name = "uid" placeholder="Enter user id"required="required"/><br><br>
<input type="password" name = "upass" placeholder="Enter user password"required="required"/><br><br>
<input type="submit" value = "login"><br><br>
<a href="index.jsp">adminlogin</a>&nbsp;&nbsp;
<a href = "index.jsp">usersignup1</a>&nbsp;&nbsp;
</form>
</center>

</body>
</html>