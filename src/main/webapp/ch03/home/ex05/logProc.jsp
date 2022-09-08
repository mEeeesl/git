<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<% 	
	String id = request.getParameter("inputId");
	String pw = request.getParameter("inputPw");
%>

<%
	application.setAttribute("id", request.getParameter("inputId"));
	application.setAttribute("pw", request.getParameter("inputPw"));
%>

<%
	if(!(id.equals("java") && pw.equals("java"))) {
%>
		<c:redirect url='login.jsp?msg=ID and password do not match.'/>
<%
	} else {
%>	
		<jsp:forward page='main.jsp'/>
<%
	}
%>

<!-- process 에서는 렌더링 작업은 안함 -->
