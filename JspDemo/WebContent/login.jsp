<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login.jsp</title>
<style>
p{color:red}
h2{color:blue}
</style>
</head>
<body>
<h1>
</h1>
<%//java code
	session.setAttribute("isUserLoggedIn", true);
	String userName = request.getParameter("userName");//request implicit objects
	out.println("Hello :" +userName);
	//String pwd = request.getParameter("pwd");//request implicit objects
	//Db code
	
	String driverName=application.getInitParameter("driverName");
	System.out.println("Loading driver :" +driverName);
	Integer hitCount = 0;
	if(application.getAttribute("hitCount")!=null)
		hitCount = (Integer)application.getAttribute("hitCount");
//	out.println("You are visitor no:" +userName);
	
%>

<p> you are visitor no: <%=hitCount %> </p>
<h2> Thank you.: <% out.println(userName); %> </h2>
<form action="logout.jsp">
<input type="submit" value="logout"/>
</form>
<form action="index.jsp">
<input type="submit" value="goto Index page"/>
</form>
</body>
</html>