<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
		<%@ page import="dao.UserDAO" %>
		<%
			UserDAO userdao = new UserDAO();
			userdao.logout((String)session.getAttribute("user"));
		%>
		<% session.invalidate(); %> <!-- HERE WE ARE INVALIDATE THE SESSION, SO THAT NO VALUES WILL BE PRESENT IN SESSION -->
		
		<jsp:forward page="index.jsp"/>
	</body>
</html>