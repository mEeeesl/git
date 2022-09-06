<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import='java.time.LocalDate' %> <!-- import -->
<%@ page import='java.util.Date' %>
<%
	LocalDate date = LocalDate.now();
	Date date2 = new Date();
%>
<%= date %><br> 
<%= date2 %>    

<!-- expression은 print로 번역된다. -->
<!--  %% 밖에있는 html코드는 write로 번역된다. -->
<!-- %@ = directive  -->
