<%@page import="org.apache.catalina.tribes.MembershipService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="service.*" %>
<%@ page import="dao.*" %>
<%@ page import="domain.*" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<% 
		MemberBean member = new MemberBean();
		member.setMemID(request.getParameter("memid"));
		member.setPassword(request.getParameter("pass"));
		member.setName(request.getParameter("name"));
		member.setSsn(request.getParameter("ssn"));
		MemberServiceImpl.getinstance().createMember(member);
		
		
	%>
	<h3>회원가입 성공</h3>
	<form action="../login/user_login_form.jsp">
		<input type="submit" name="로그인" />
	</form>
	
	
</body>
</html>