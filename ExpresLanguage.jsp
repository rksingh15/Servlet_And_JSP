<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	request.setAttribute("link", "Ritik singh kushwaha");

		session.setAttribute("session_link", "Ritik singh kushwaha");
	//out.println(request.getAttribute("link"));
	%>

	<h1 > request My name : ${requestScope.link}</h1>
	
	<h2> Session My name : ${session_link} </h2>


	<h2>${param.name1 }</h2>
	<h2>${param.email1 }</h2>

</body>
</html>
