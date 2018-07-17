<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="domain.*"%>
<%@page import="service.*"%>
<%@page import="java.util.*" %>

<link rel="stylesheet" href="../../css/style.css" />

<% MemberBean mem = MemberServiceImpl.getinstance().searchById(request.getParameter("memid"));%>

<table>
	<tr>
		<th>나이</th>
		<th>멤번아이디</th>
		<th>이름</th>
		<th>비밀번호</th>
		<th>역할</th>
		<th>주민번호</th>
		<th>팀아이디</th>
	</tr>
	<tr>
		<td><%=mem.getAge() %></td>
		<td><%=mem.getMemID() %></td>
		<td><%=mem.getName() %></td>
		<td><%=mem.getPassword() %></td>
		<td><%=mem.getRoll() %></td>
		<td><%=mem.getSsn() %></td>
		<td><%=mem.getTeamID() %></td>
		
	</tr>
	
</table>