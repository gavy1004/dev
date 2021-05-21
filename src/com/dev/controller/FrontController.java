package com.dev.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * 전체 애플리케이션의 컨트롤러 등록 관리.
 * *.do, *.action
 */

@WebServlet()
public class FrontController extends HttpServlet {
	HashMap<String, Controller> list ;
	String charset = null; // 제일 처음에 한번 실행되구여
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// front 요청시 제일 처음 한번만 실행되는 메소드
		charset =config.getInitParameter("charset");
		
		list = new HashMap<>();
		System.out.println("front init()");
		//list.put("/요청페이지.do", "컨트롤러");
		list.put("/memberInsert.do", new MemberInsertController());
		list.put("/memberSearch.do", new MemberSearchController());
		list.put("/memberUpdate.do", new MemberUpdateController());
		list.put("/memberDelete.do", new MemberDeleteController());
		list.put("/memberList.do", new MemberListController());
	}
	@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 매번 요청시 마다 오청되는 페이지
		req.setCharacterEncoding(charset);
		String uri = req.getRequestURI();	//	dev/insertMEmber.do
		String contextPath = req.getContextPath();	//	/dev
		String path = uri.substring(contextPath.length());	// /insertMEmber.do
		System.out.println(path);
		
		Controller sub = list.get(path);	// controller
		sub.execute(req, resp);
		
	}
}
