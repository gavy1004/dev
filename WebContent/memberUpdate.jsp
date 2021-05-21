<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result/memberUpdate.jsp</title>
</head>
<body>

	<form action="memberSearch.do" method="post">
		ID : <input type="text" name="id"><br>
		<input type="hidden" name="job" value="update">
		<input type="submit" value="조회"> 
	</form>
	
	<%
		MemberVO member = (MemberVO) request.getAttribute("member");
		if(member != null ) {
			// 입력화면
			%>
			<form action="memberUpdate.do" method="post">
				아이디 : <input type="text" name="id" readonly value="<%=member.getId()%>"><br>
				비밀번호 : <input type="password" name="passwd" value="<%=member.getPasswd()%>"><br>
				이름 : <input type="text" name="name" value="<%=member.getName()%>"><br>	
				메일 : <input type="email" name="mail" value="<%=member.getMail()%>"><br>
				<input type="submit" value="수정"><br>
			</form>
			<% 
		} else {
			// 조회 된 결과가 없습니다
			%>
			<h3>조회 결과 없습니다.</h3>
			<%
		}
	%>
</body>
</html>