<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String userId = request.getParameter("userId");
	String pw = request.getParameter("pw");
	
	if(userId.equals("java") && pw.equals("java")) {
		session.setAttribute("userId", userId);
%>
		<c:redirect url='main.jsp'/>
<%
	} else {
%>
		<c:redirect url='login.jsp'>
			<c:param name='msg' value='ID와 PW를 확인 해주세요.'/>
		</c:redirect>
<%
	}
%>



<!-- ▼ 내가한거
% 	
	String id = request.getParameter("inputId");
	String pw = request.getParameter("inputPw");
%>

%
	session.setAttribute("id", request.getParameter("inputId"));
	session.setAttribute("pw", request.getParameter("inputPw"));
%>

%
	if(!(id.equals("java") && pw.equals("java"))) {
%>
		<c:redirect url='login.jsp?msg=ID and password do not match.'/>
%
	} else {
%>	
		<jsp:forward page='main.jsp'/>
%
	}
%>
 -->
<!-- process 에서는 렌더링 작업은 안함 -->
