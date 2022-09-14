<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie1 = new Cookie("name", "john");
	Cookie cookie2 = new Cookie("age", "12");

	response.addCookie(cookie1); //cookie 생성
	response.addCookie(cookie2);
%>

<!-- 
	쿠키는 client에 저장,
	client는 text로 쿠키를 관리
	> 쿠키를 response에 담으면 됨.
	
	서버에서 서블릿을 우리가 만드는 이유 - html 코드를 동적으로 만들기위함
	
	tomcat은 html 코드를 생성할뿐이지 사용은 안함
	html 코드는 client가 사용함.
	
	서버에서 html코드를 생성해서 response로 client에게 보내준다.
	
	response에 담는 data type
	1. html code 
	2. url 
	3. cookie 
	
	response에 url을 담았다 = redirect
	
	client가 response로
	1. html 코드를 받으면, 렌더링을 하고,
	2. html 코드가 url이면, request를 하고, ( 페이지이동 )
	3. cookie를 받으면, directory에 파일을 생성해서 저장한다.
	
-->