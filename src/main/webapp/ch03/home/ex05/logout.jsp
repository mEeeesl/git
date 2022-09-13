<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	session.invalidate();
%>
<c:redirect url='main.jsp'/>

<!-- 새로운 업무가 시작되는 거기에, redirect를 사용하는게 좋음 -->