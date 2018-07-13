<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.util.*"%>
<%@ page import= "service.*" %>
<%@ page import= "domain.*" %>
->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<%
	MemberBean m = new MemberBean();
	m.setMemID(request.getParameter("userid"));
	m.setPassword(request.getParameter("password"));
	if(MemberServiceImpl.getinstance().login(m)){
		%>
		로그인 성공
		<%
	}else{
		%>
		로그인 실패
		<%
	}
%>

	
</body>
</html>