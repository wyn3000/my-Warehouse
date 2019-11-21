<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1.c:set标签</h2>
	<h2>(1)往作用域中添加属性的值</h2>
	<h2>(2)修改作用域中已有属性的值</h2>
	<!-- request.setAttribute("name","张三"); -->
	<c:set var="name" value="儿子" />
	${name }

	<c:set var="name" value="叫爸爸" scope="request" />
	${name } ${requestScope.name }

	<h2>2:c:if标签--构造简单的if..else分支结构</h2>
	<h2>1:根据当前月份判断当前的季节</h2>
	<c:set var="month" value="2" />
	<c:if test="${month >=3 && month<=5}">
    小小春天
  </c:if>
	<c:if test="${month >=6 && month<=8}">
    狗狗夏天
  </c:if>
	<c:if test="${month >=9 && month<=11}">
    爽爽秋天
  </c:if>
	<c:if test="${month==12 || month==1 || month==2}">
    傻傻冬天
  </c:if>
	<h2>3:c:forEach标签</h2>
	<h3>(1)遍历作用域中的数组或集合中的元素</h3>

	<%-- 
  String[] ns = {1,2,3,4,5,6}
  for(String name : ns){
  	System.out.println(name);
  }
   --%>

	<%-- <c:forEach items="${ ns }" var="name">
  	${ name }<br />
	</c:forEach>
	<c:forEach items="${ list }" var="names">
  	${ names }<br />
	</c:forEach>

	<h3>(2)遍历作用域中map集合中的元素</h3>

	<c:forEach items="${map1} }" var="entry" varStatus="status">
  	${status.count}:${entry.key}:${entry.value}<br/>
	</c:forEach>

	<h3>(3)遍历1~100之间所用整数.将是7的倍数的数值输出到页面上</h3>
	<c:forEach begin="1" end="100" var="i" step="1" varStatus="status">
		<c:if test="${i%7==0 }">${i}</c:if>
	</c:forEach> --%>
</body>
</html>





















