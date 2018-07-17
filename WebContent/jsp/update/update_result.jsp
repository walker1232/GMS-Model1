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
		member.setPassword(request.getParameter("pass") + "/" + request.getParameter("newpass"));
		MemberServiceImpl.getinstance().updateMember(member);
		
	%>
	<h3>비밀번호 변경완료</h3>
	<form action="../login/user_login_form.jsp">
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>