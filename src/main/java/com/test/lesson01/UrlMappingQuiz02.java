package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		현재의 시간을 출력하세요.
//		- web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
//		- Content Type은 text/plain으로 설정하세요.
//		- 24시간 표현법으로 출력하세요.
//
//		출력 예시
//
//		현재 시간은 14시 52분 43초 입니다.
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("HH시 mm분 ss초 입니다.");
		out.print("현재 시간은 " + sdf.format(now));
		

		
		
	}
	
	
}
