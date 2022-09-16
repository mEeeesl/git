<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	pageContext.setAttribute("userName", "최한석");
%>
${userName} <br>
${hello} <br> 
<!-- 존재하지 않는 값(hello)에 대해선, null값이 리턴되고, 
null은 화면상에 출력되지 않는다. -->
${empty hello} <br> <!-- true -->
${empty userName ? "무명" : userName}
${!empty userName ? userName : "무명"}
