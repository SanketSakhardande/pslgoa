<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>topics</h1>
	<%
	
		String topics[]=(String[])request.getAttribute("topics");
		for(String p:topics){
		%><h1>
		<%= p  %>
		</h1>
		<%
		}
	%>
</body>
</html>