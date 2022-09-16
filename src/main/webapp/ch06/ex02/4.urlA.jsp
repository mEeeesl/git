<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<h3>A</h3>

<c:url var='page' value='4.urlB.jsp'/>
<a href='${page}'>이동</a> <br><br>

${param.num}

<!-- 
B에서 A로 올때 parameter num 을 이용할건데.
최초 urlA page에서는 num이 없기에 null값이 렌더링되지 않은채 나올거임.

 -->