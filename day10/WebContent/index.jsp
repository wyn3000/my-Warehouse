<%@ page pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>day10...index.jsp</h3>
	<% 
		String name = (String)request.getAttribute("name");
	%>
	<%= name %>
</body>
</html>