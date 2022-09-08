<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> <%-- 'c'는 접두사고, 임의지정 --%>
A
<c:redirect url='2.b.jsp'/>

<!-- 
유저는 a.jsp로 리퀘스트보냄>
a.jsp는 b.jsp로 redirect함
 -->