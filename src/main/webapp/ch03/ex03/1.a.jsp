<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response);
%>


<!-- 자동 페이지 이동 
	 버튼이든 뭐든 안눌러도 자동
	  
	 dispatch = 분기하다
	 a 서블릿을 b 서블릿으로 넘김 
	 b 서블릿에서 response 만들어서 client에게 전달함

	forward
	1. client -> request -> servlet1
	2. servlet1 -> forward -> servlet2
	3. servlet2 -> response -> client
	
	> URL에 ~~ /1.a.jsp
	> 페이지 내용은 B


	a include action b 와 공통점
	a실행 > b 실행
	
	차이점
	a include b 는 협력해서 페이지를 같이 만듬
	a forward b 는 b혼자서 페이지를 만듬
				  처음엔 a가 리퀘스트 받았지만 b에게 던져버리고 맘
				  
	유저(client) > 리퀘스트 > a > b > b가 리스판스 > 유저
	
	include -> 유저 > 리퀘스트 > 네이버 > 네이버 신문기사 > 네이버 > 유저 

	출력되는 값은 1.b.jsp의 값이 뜨지만,
	주소 URL은 http://localhost/servlet/ch03/ex03/1.a.jsp
 
	A include action B와 달리
	dispatcher.forward
	A forward B는, A를 무시하고 B만 출력 		
-->