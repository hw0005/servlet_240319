<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<!-- 1번 -->
	<%!
		public int sum(int end) {
			int sum = 0; 
			for (int i = 1; i <= end; i++) {
				sum += i;
				}
			return sum;
		}
	%>
	<h2>1부터 50까지의 합은 <%= sum(50) %> 입니다.</h2>
	


	<!-- 2번 -->
	<%
		int[] scores = {81, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];	
		}
		double avg = sum / (double) scores.length;
	%>
	<h2>평균 점수는 <%= avg %> 입니다.</h2>
	
	<!-- 3번 -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		Iterator<String> iter = scoreList.iterator();
		while (iter.hasNext()) {
			String s = iter.next();
			
			if (s.equals("O")) {
				score += 10;
			}
		}
		
	%>
	<h2>채점 결과는 <%= score %>점입니다.</h2>
	
	
	<!-- 4번 -->
	<%
		String birthDay = "20010820";
		int year = Integer.valueOf(birthDay.substring(0,4));
		int age = 2024 - year;
				
	%>
	<h2><%= birthDay %> 의 나이는 <%= age %> 세입니다. </h2>
		
</body>
</html>