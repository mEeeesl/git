<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	//setAttribute("data name", "value") = 객체에 데이터 추가
	//페이지, 리퀘스트 라는 밸류를 바꿀 순 있지만, 기본적으로 바꾸지 않기위해 Attribute를 사용
	pageContext.setAttribute("one", "페이지");
	request.setAttribute("two", "리퀘스트");
	session.setAttribute("three", "세션");
	application.setAttribute("four", "애플리케이션");
%>
	<c:redirect url='1.scopeB.jsp'/>

<!--
	방법이 아니라 개념에 초점을 맞춰라.
	메서드는 나중에 안쓴다고한다.
 
	하나의 화면에서 쓸 데이터를 관리할때, pageContext
	
	업무가 진행되는동안 계속 쓰고싶을때, request
	업무별로 관리하고 싶을때, request scope에 저장
	
	유저별로 관리하고 싶을때, session scope
	
	앱 전체의 데이터를 관리하고 싶을때, (DB연결정보 등) application scope
	 

 -->

<!-- 
※ 보통은 request에 setAttribute를 사용.
	
	application scope > session scope > request > pageContext
		
	application = Tomcat 실행시(Run 누를시), 앱 실행됨
	application scope = 앱 실행되는 동안.

	session 객체의 scope  >  request 객체의 scope
	ex) session - 장바구니 담기 ( 과거 )
		DB - 장바구니 담기 ( 현재 )
		
	1. 클라이언트가 최초로 A page(servlet)한테 리퀘스트 보낼때,
		리퀘스트 객체랑 A pageConstext랑 session 객체가 생김
		
	2. forward B하면
		session 객체는 연결중
		리퀘스트 객체는 전달중
		A pageContext는 죽음
		B pageContext가 생김
	
	3. forward C 하면
		session 객체는 연결중
		request 객체는 전달중
		B pageContext는 죽음
		C pageContext가 생김
	
	4. response가 모두 끝나면
		session 객체는 로그아웃, timeout 할 때 까지 연결중
		request 객체는 죽음
	
	
	리퀘스트 객체안에 클라이언트가 저장한 데이터를 저장
	A forward B, forward B (page 이동) 하는 순간, pageContext scope는 죽지만
	request는 전달해야하기에 request scope는 살아있음
	다 끝나야 request scope는 죽음
	
	Connectionless
	session = client와 server사이의 연결
	
	session은 물리적으로, 객체로 처리함 - 8번째줄 session객체

	application = Tomcat 실행시(Run 누를시), 앱 실행됨

 -->

