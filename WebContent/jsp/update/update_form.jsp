<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>비밀번호 변경</title>
</head>
<body>
	<h3>비밀번호 변경</h3>
<form action="update_result.jsp">
	ID:<input type="text" name="memid"/>
	PW:<input type="text" name="pass" />
	NEWPW:<input type="text" name="newpass"/>
	<input type="submit" value="변경" />
</form>
</body>
</html>
