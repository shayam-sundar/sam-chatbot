package com.s3Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class xmlServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		System.out.println("from doget method.");
		PrintWriter writer=response.getWriter();
		//writer.println("<h1>Shayam sundar</h3>");
		String userName = request.getParameter("userName");
		writer.println("hello"+" " +userName);
	}

}
