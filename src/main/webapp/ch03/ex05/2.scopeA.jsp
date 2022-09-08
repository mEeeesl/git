<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one", "페이지2"); // null
	request.setAttribute("two", "리퀘스트2");	//null
	session.setAttribute("three", "세션2"); //세션2
	application.setAttribute("four", "애플리케이션2"); //애플리케이션2
%>
	<c:redirect url='1.scopeB.jsp'/>

<!-- 
	data name이 동일하다면, 기존 내용에 덮어씌움 (Override)	
	 
	 -->