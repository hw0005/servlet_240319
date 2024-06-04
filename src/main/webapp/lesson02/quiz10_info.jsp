<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
	header {height:100px;}
	nav {height:40px;}
	.contents {min-height:500px;}
	footer {height:200px;}
</style>

</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    
    
%>
	<%
		// 보여줄 맵 저장
		Map<String, Object> target = null;
			
	    // request params
	    int id = Integer.valueOf(request.getParameter("id"));
	    for (Map<String, Object> item : musicList) {
	    	if (id == (int)item.get("id")) {
	    		target = item;
	    		break;
	    	}
    	}
	%>
	<div id="wrap" class="container">
		<form method="get" action="/lesson02/quiz10_info.jsp">
		
			<header class="d-flex align-items-center">
				<!-- 로고 -->
				<div class="col-2">
					<h1 class="text-success">Melong</h1>
				</div>
				<!-- 검색 -->
				<div class="col-10">
					<div class="input-group">
						<input type="text" class="form-control col-6">
						<div class="input-group-append">
							<input type="button" class="btn btn-info" value="검색">
						</div>
					</div>
				</div>
			</header>
			
			
			<nav class="d-flex align-items-center">
				<ul class="nav">
					<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱챠트</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
				</ul>
			</nav>
			
			
			<section class="contents mt-3">
				<h3 class="font-weight-bold">곡 정보</h3>
				<!-- 아티스트 정보 영역 -->
				<div class="d-flex border border-success p-3">
					<div class="mr-4">
						<img src="<%=target.get("thumbnail") %>" alt="가수 이미지" width="200">
					</div>
					<div>
						<div class="display-4"><%= target.get("title") %></div>
						<b class="font-weight-bold text-success"><%= target.get("singer") %></b>
						<div class="d-flex text-secondary">
							<div>
								<div>앨범</div>
								<div>재생시간</div>
								<div>작곡가</div>
								<div>작사가</div>
							</div>
							<div class="ml-4">
								<div><%= target.get("album") %></div>
								<div><%= (int)target.get("time") / 60 %> : <%= (int)target.get("time") % 60 %></div>
								<div><%= target.get("composer") %></div>
								<div><%= target.get("lyricist") %></div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 곡 목록 -->
				<div class="mt-4">
					<h3 class="font-weight-bold">가사</h3>
					<hr>
					<div class="font-weight-bold">
						가사 정보 없음
					</div>

				</div>
			</section>
			
			<footer>
				<hr>
				Copyright 2021. melong All Rights Reserved.
			</footer>
		</form>
	</div>


</body>
</html>