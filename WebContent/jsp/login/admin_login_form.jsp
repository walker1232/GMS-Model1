<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>admin_login</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body>
	<div id="admin-login-layout">
	<h1>관리자 로그인</h1>
	<form id="admin-login-form" action="login_result.jsp">
	아이디:<input type="text" name="id" /><br />
	비밀번호:<input type="password" name="password"  /><br />
	<input type="submit" value="로그인"/>
	</form>
	</div>
</body>
</html>