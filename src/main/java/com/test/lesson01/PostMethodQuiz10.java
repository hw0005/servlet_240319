package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet {
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap = new HashMap<String, String>() {
		{
			put("id", "marobiana");
			put("password", "qwerty1234");
			put("name", "신보람");
		}
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// response header setting(인코딩 생략)
		response.setContentType("text/html");

		// request params
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		String userId = userMap.get("id");
		String userPassword = userMap.get("password");
		String name = userMap.get("name");

		// 출력
		PrintWriter out = response.getWriter();

		if (userId.equals(id) == false) {
			out.print("아이디가 일치하지 않습니다.");
		} else if(userPassword.equals(password) == false) {
			out.print("비밀번호가 일치하지 않습니다.");
		} else {
			out.print(name + "님 환영합니다!");
		}
		
	}
}
