<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<%
	String numStr = request.getParameter("num");
	
	try {
		int num = Integer.parseInt(numStr);
%>
		입력값: <%= numStr %> <br>
		계산값: <%= numStr %> * 2 = <%= num * 2 %> <br>
		<a href='4.numIn.jsp'>뒤로가기</a>
<%
	} catch(NumberFormatException e) {
%>	
	<%-- 과제: numUn.jsp form에 err ▼ Query String?출력 --%>
	<c:redirect url='4.numIn.jsp?msg=Input number.'/>
<%
	}
%>