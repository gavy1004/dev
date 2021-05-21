<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInsert.jsp</title>
<!-- 
FronyController (실행할 sub controller 등록)
->subController(servelt) :관리

com.dev.conteroller : 컨트롤러
com.dev.dao 	 : db처리
com.dev.service 	 : 비즈니스 로직
com.dev.vo	 : 모델 

사용자 화면:  memberDelete.jsp
	 		memberInsert.jsp
			memberSerch.jsp	
			memberUpdate.jsp


처리결과 	: memberDeleteOutput.jsp
		memberInsertOutput.jsp
		memberSerchOutput.jsp	
		memberUpdateOutput.jsp
		
		회원 추가
		meberInsert.jsp -> FrontController.java ->
		MemberInsertController.java -> MemberService.java ->
		MemberDAO.java -> MemberInsertOutput.jsp

		회원정보 검색 
		memberSearch.jsp -> FrontController.java ->
		memberSearchController.java -> Memberservice.java -> MemberDAO.java
		-> memberSearchOutput.jsp
		
		회원정보 수정
		memberUpdate,jsp -> FrontController.java ->
		MemberUpdateController.java -> MemberServuce.java ->
		MemberDAO.java -> memberupdateOutput.jsp
 -->
</head>
<body>
<h3>회원가입 페이지</h3>
<form action="memberInsert.do" method="post">
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="passwd"><br>
	이름 : <input type="text" name="name"><br>
	메일 : <input type="email" name="mail"><br>
	<input type="submit" value="등록"><br>
</form>
</body>
</html>