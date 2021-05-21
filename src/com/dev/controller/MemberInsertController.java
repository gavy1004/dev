package com.dev.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.dao.MemberDAO;
import com.dev.service.MemberService;
import com.dev.vo.MemberVO;

public class MemberInsertController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 신규 회원 등록기능 -> memberInertOutput.jsp
		
		String id =request.getParameter("id");
		String name =request.getParameter("name");
		String passwd =request.getParameter("passwd");
		String mail =request.getParameter("mail");
		
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setName(name);
		member.setPasswd(passwd);
		member.setMail(mail);
		
		// 서비스 로직 호출
		MemberService service = MemberService.getInstance();
		service.memberInsert(member);
		
		request.setAttribute("member", member);
		
		RequestDispatcher rd = request.getRequestDispatcher("result/memberInsertOutput.jsp");
		rd.forward(request, response);
		
		
	}

}
