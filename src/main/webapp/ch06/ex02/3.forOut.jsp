<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<ul>
	<c:forEach var='fruit' items='${paramValues.fruit}' varStatus='status'>
		<li>${status.count}: ${fruit}, ${status.index}</li>
	</c:forEach>
</ul>


<!-- 
	AttributeName 을 var로 지정
	items에 배열 지정
	items='${paramValues.AttrivuteName}'
	
	count는 1부터 시작,
	index는 0부터 시작
 -->