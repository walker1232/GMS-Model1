<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import ="domain.*" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body>
	<% List<MemberBean> memList = MemberServiceImpl.getinstance().listMember();%>
	<table>
		<tr >
			<th >이름</th>
			<th >팀아이디</th>
			<th >멤버아이디</th>
			<th >나이</th>
			<th >역할</th>
			<th >비밀번호</th>
			<th >주민번호</th>
		</tr>
<% for(MemberBean m : memList){ %>
	<tr>
		<td ><%= m.getName() %></td>
		<td ><%= m.getTeamID()%></td>
		<td ><%= m.getMemID()%></td>
		<td ><%= m.getAge()%></td>
		<td ><%= m.getRoll()%></td>
		<td ><%= m.getPassword()%></td>
		<td ><%= m.getSsn()%></td>
	</tr>
<%	
}
%>
	</table>
</body>
</html>
