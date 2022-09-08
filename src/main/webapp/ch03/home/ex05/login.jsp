<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<form action='logProc.jsp' method='post'>
	Id: <input type='text' name='inputId'>
	Password: <input type='password' name='inputPw'>
	<input type='submit'>
</form>
<%
	String msg = request.getParameter("msg");
%>

<%= msg != null ? msg : "" %>