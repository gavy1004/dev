<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDelete.jsp</title>
</head>
<body>
	<form action="memberSearch.do" method="post"> 
		ID : <input type = "text" name="id">
		<input type="hidden" name="job" value="delete">
		<input type = "submit" value ="조회">
	</form>
	
		<%
		MemberVO member = (MemberVO) request.getAttribute("member");
		if(member != null){
		%>
		<p> ID : <%=member.getId() %> / Name : <%=member.getName() %> / Mail : <%=member.getMail() %></p>
			<form action="memberDelete.do" method="post">
				<input type="hidden" name="id" value="<%=member.getId()%>">
			 	<input type="submit" value="삭제"> 
			</form>
			<% 
		} else {
		%>
			<p>조회 결과가 없습니다</p>
		<%	
		}
		%>
	
</body>
</html>