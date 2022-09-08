<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	response.sendRedirect("1.b.jsp");
%>



<!-- 
	redirect
	
	URL을 다시 가리킨다.
	1.b.jsp URL을 response (출력)함.
	
	1. client -> request -> a.jsp
	2. a.jsp -> redirect (b.jsp로 해라) -> client
	3. client -> b.jsp
	4. b.jsp -> client 

	redirect
	=>  URL => ~~ / 1.b.jsp
	    페이지 내용은 => B

	forward 였으면,
	=>  URL => ~~ / 1.a.jsp
		페이지 내용은 => B
 -->