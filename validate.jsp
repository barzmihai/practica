<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Validate</title>
	</head>
	<body><!-- values given at login page are taken here and checks if the valid details are not -->
		<%@ page import="dao.UserDAO" %>
		<%
		UserDAO userdao = new UserDAO();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if(userdao.login(username,password))
			session.setAttribute("user", username);
		response.sendRedirect("index.jsp");
		%>
	</body>
</html>
