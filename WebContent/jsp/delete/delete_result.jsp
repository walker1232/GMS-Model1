<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.*" %>
<%@ page import="service.*" %>
<%@ page import="dao.*" %>
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
		MemberServiceImpl.getinstance().deleteMember(member);
		
	%>
	<h3>회원탈퇴 완료</h3>
	<form action="../../main.jsp">
		<input type="submit" value="메인페이지" />
	</form>
</body>
</html>