package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 테스트용 주석 추가
		// stash용 주석 추가
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// request parameter
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("서블릿 수행");
//		out.println("userId: " + userId);
//		out.println("name: " + name);
//		out.println("age: " + age);
		
		// {"user_id":"marobiana", "name":"신보람","age":"20}
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
		
	}
	
}
