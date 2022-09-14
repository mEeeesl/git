<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie = new Cookie("age", ""); // cookie value 삭제
	cookie.setMaxAge(0); // age 삭제 , setMaxAge(0초) - 0초니까 실행안됨
	
	response.addCookie(cookie);
%>

<!-- 
	response.addCookie("",""); 생성
	cookie.getName(); 읽기
	수정, 삭제는 그냥 덮어쓰기
	
	setMaxAge(int seconds) 
	= 쿠키 만료 기간 지정
	※ ms가 아닌, s
	
	client가 하는일
	1. response에 쿠키를 저장
	2. request에 쿠키를 골라 담는다
 -->