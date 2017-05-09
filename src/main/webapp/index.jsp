<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Server</title>
</head>
<body>
	<h1>Helloworld!</h1>
	<h2>Current Time: <%= new java.util.Date()%></h2><hr>
	<%
		Connection connection = null;
		
		try {
			Class.forName("org.postgresql.Driver");
			String ConnectionUrl = "jdbc:postgresql://192.168.70.88:5433/postgres";
			connection = DriverManager.getConnection(ConnectionUrl, "docker", "docker");
    		
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<h2>DB Info:</h2>
	<p>DB Name: <%= connection.getMetaData().getDatabaseProductName() %></p>
	<p>DB Version: <%= connection.getMetaData().getDatabaseProductVersion() %></p>
</body>
</html>