package com.KOSTA.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MaemberServlet
 */
@WebServlet("/memberInsert")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//파라메타 값이 많은경우 유용함
		Enumeration<String> names = request.getParameterNames();
		while(names.hasMoreElements()) {
			
			String paraName = names.nextElement();
			String[] paramValues = request.getParameterValues(paraName);
			for(String val: paramValues) {
				out.println("<h2>"+paraName+val+"</h2>");
			}
		}
		
		/*
		 * String name = request.getParameter("name"); String phonenumber =
		 * request.getParameter("phonenumber"); String id = request.getParameter("id");
		 * String passwd = request.getParameter("passwd"); String[] subject =
		 * request.getParameterValues("subject");
		 * 
		 * System.out.println(name); System.out.println(phonenumber);
		 * System.out.println(id); System.out.println(passwd);
		 */
	}

	

}
