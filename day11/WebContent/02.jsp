<%@ page pageEncoding="UTF-8"%>

<!DOCTYPE >
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%="hello JSP" %>
	<%= 123 %>
	<%String name="少光宗"; %>
	<%=name %>
	<%= 45*56 %>
	
	<hr>
	<%--JSP脚本程序 --%>
	<%
	int sum=0;
	for(int i=0;i<100;i++){
		sum += i;
	}
	out.write("1到100之间所有的整数的和为："+sum);
	%>
	<hr/>
	<% for(int i=1;i<=5;i++){%>
		"天地同寿"<br>
	<%}%>

</body>
</html>