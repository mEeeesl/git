<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch05.service.EmployeeService, ch05.service.EmployeeServiceImpl' %>
<%
	EmployeeService empService = new EmployeeServiceImpl();
%>
<%= empService.getEmployee(100) %>

<%-- 서블릿은 서비스계층과 대화함. (DAO는 건들면 안됨) --%>
<%-- EL( Expression Language )을 사용하면, 
<%= empService.getEmployee(100) %> 이거만 사용하게됨 --%>