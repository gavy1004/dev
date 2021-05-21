<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dev.dao.MemberDAO"%>
<%@page import="com.dev.vo.MemberVO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberListOutput.jsp</title>
</head>
<body>
<c:choose>
	<c:when test="${empty list }">
		<p>조회 결과 없음</p>
	</c:when>
	<c:otherwise>	
		<ul>
			<c:forEach items="${list }" var="member">
				<li>${member.id } - ${member.name }</li>
			</c:forEach>
		</ul>
	</c:otherwise>
</c:choose>

<%-- <%
	List <MemberVO> list = (List<MemberVO>)request.getAttribute("list");
	
	if(list.size() == 0) {
		%>
			<p>조회 결과가 없습니다</p>
		<% 
	}else {
		// 회원 리스트 출력
		out.print("<ul>");
		for (MemberVO member : list ) {
			
		}
		out.print("</ul>");
	}
%> --%>

</body>
</html>