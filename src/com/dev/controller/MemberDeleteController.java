package com.dev.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.MemberService;
import com.dev.vo.MemberVO;

public class MemberDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한건 삭제할 id
		String id =request.getParameter("id");
		
		// 서비스 로직 호출
		MemberService service = MemberService.getInstance();
		service.memberDelete(id);
		
		request.setAttribute("id", id);
		
		RequestDispatcher rd = request.getRequestDispatcher("result/memberDeleteOutput.jsp");
		rd.forward(request, response);
		
	}

}
