<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index.jsp</title>
</head>
<body>
<!--  <h1>Welcome to world of JSP!</h1> -->
<%!
int x=10;
boolean authenticate(){
	System.out.println("Authenticating");
	return true;
}
%>
<h1 style="color:blue">JSP Demo</h1>
<%
	if(request.getSession(false)!=null){
		boolean flag=false;
		if(session.getAttribute("isUserLoggenIn")!=null){
	 flag=(boolean)session.getAttribute("isUserLoggenIn");
		}
	if(flag){
	Integer hitCount= (Integer) application.getAttribute("hitCount");
	//int hitCount=0;
	System.out.println("hitcount: "+hitCount);
	if (hitCount==null||hitCount==0){
		out.println("Welcome to the world of JSP");
		hitCount=1;
	}
	else{
		
		out.println("Welcome back to the world of JSP. You are visitor no:"+ hitCount);
		hitCount++;
	}
	application.setAttribute("hitCount", hitCount);
	}
	else
		response.sendRedirect("login.html");
	}
	else{
		response.sendRedirect("login.html");
	}
%>
<%--  	<%= authenticate()?"Authenticated":"Not authenticated" %> --%>
</body>
</html>