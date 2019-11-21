<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<meta charset=UTF-8>
<title></title>
</head>
<body>
	<h2>EL表达式的用法</h2>
	<h3>1, EL可以获取常量/变量(必须存入域中)/表达式的值</h3>
	${"Hello EL" } ${100} ${100+23}
	<%
		String str = "abc";
		request.setAttribute("str1", str);
	%>
	${str1}
	<%--在EL中书写变量，底层会根据变量名（比如str）到
四大作用域中去寻找该名称对应的属性值，如果找到就返回
该名称对应的属性值，如果找不到就不输出 
四个作用域：application,session,request,pageContext;
作用范围大小为从左往右依次大到小，查找顺序为小到大
--%>
	<h3>2, EL可以获取域中的数组或集合中的数据</h3>
	${ns[0]}
	${ns[1]}
	${ns[2]}
	${ns[3]}


	<h3>3, EL可以获取域中的Map集合中的数据/元素</h3>
	${map1.西游记}
	${map1.漫威}
	${map1.三国}

	<h3>4, EL可以获取域中的对象的属性值</h3>
	${user.getName()}
	${user.getAddr()}
	${user.getAge()}

</body>
</html>