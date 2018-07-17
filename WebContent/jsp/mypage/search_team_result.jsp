<%@page import="service.MemberServiceImpl"%>
<%@page import="dao.*"%>
<%@page import="service.*" %>
<%@page import="domain.*"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body>
	<table>
		<tr>
			<th>나이</th>
			<th>멤버아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>역할</th>
			<th>주민번호</th>
			<th>팀아이디</th>
		</tr>
	<% 
		List<MemberBean> memList = MemberServiceImpl.getinstance().searchByName(request.getParameter("teamid")); %>
		<% for(MemberBean m : memList){ %>
			<tr>
				<td><%= m.getAge() %></td>
				<td><%= m.getMemID() %></td>
				<td><%= m.getName() %></td>
				<td><%= m.getPassword() %></td>
				<td><%= m.getRoll() %></td>
				<td><%= m.getSsn() %></td>
				<td><%= m.getTeamID() %></td>
			</tr>
			
		<% }
	
	%>
	</table>
</body>
</html>