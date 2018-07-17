<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
    <%!
    	int a = 4;
    	int b = 5, c = 0;
    	String name = "";
    	int count = 0;
    %>
    <%
    	c = a + b;
    	name = "테스트";
    	count = MemberServiceImpl.getinstance().countMember();
    %>
<!doctype html>
<html lang="en">
<head> 
	<meta charset="UTF-8" />
	<title>main</title>
	<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<%=new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초").format(new Date()) %> <br />
	<h3>현재 회원수 : <%= count %>명</h3> 
	<table id="logout-tab-layout" class= "width-full height-700 margin-auto ">
		<tr class= "height-20pt">
			<th colspan="2">GMS</th>
		</tr>
		<tr id="logout-tab-layout-tr">
			<td id="logout-tab-layout-td1"><img src="jsp/img/home/Koala.jpg" width= "60%" height="200" alt="" /></td>
			<td id="logout-tab-layout-td2">
			<ul>
					<li><a href="jsp/login/user_login_form.jsp">사용자로그인</a></li>
					<li><a href="jsp/login/admin_login_form.jsp">관리자 로그인</a></li>
					<li><a href="jsp/join/join_form.jsp">회원가입</a></li>
					<li><a href="jsp/update/update_form.jsp">정보수정</a></li>
					<li><a href="jsp/delete/delete_form.jsp">회원탈퇴</a></li>
					<li><a href="jsp/mypage/member_list.jsp">회원목록</a></li>
					<li><a href="jsp/mypage/search_team_form.jsp">팀이름검색</a></li>
					<li><a href="jsp/mypage/search_id_form.jsp">아이디검색</a></li>
			</ul>
			<!-- <a href="mypage.html">로그아웃</a></td> -->
		</tr>
		<tr class= "height-20pt">
			<td colspan="2"><!-- react-text: 266 -->(주)야놀자<!-- /react-text --><i data-reactid="267"></i><!-- react-text: 268 -->대표이사: 이수진<!-- /react-text --><i data-reactid="269"></i>
							<!-- react-text: 270 --> 주소: 서울 강남구 테헤란로 427 <!-- /react-text --><i data-reactid="271"></i><!-- react-text: 272 -->메일: <!-- /react-text --><a href="mailto:help@yanolja.com" data-reactid="273"><b data-reactid="274">help@yanolja.com</b></a>
							<!-- react-text: 275 --> <!-- /react-text --><br data-reactid="276"/><!-- react-text: 277 -->사업자 등록번호: 220-87-42885<!-- /react-text --><i data-reactid="278"></i><!-- react-text: 279 -->통신판매업신고: 강남-14211호<!-- /react-text --><i data-reactid="280"></i>
							<!-- react-text: 281 -->관광사업자 등록번호: 제2016-31호<!-- /react-text --><i data-reactid="282"></i><!-- react-text: 283 -->호스팅 서비스 제공자: (주)야놀자<!-- /react-text --></address><p data-reactid="284">(주)야놀자는 통신판매중개자로서, 통신판매의 당사자가 아니라는 사실을 고지하며 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.</p></div>
			</td>
		</tr>
	</table>
</body>
</html>