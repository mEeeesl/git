<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a><br>
<% // getCookies() -> cookie type의 객체로 자동변환 및 읽기
	Cookie[] cookies = request.getCookies(); 

	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("name") || cookie.getName().equals("age")) {
%>
			<%= cookie.getName() %>: <%= cookie.getValue() %><br>
<%			
		}
	}
%>
<!-- 
	response.addCookie("",""); 생성
	cookie.getName(); 읽기
	수정, 삭제는 그냥 덮어쓰기
	
	client가 하는일
	1. response에 쿠키를 저장
	2. request에 쿠키를 골라 담는다
 -->