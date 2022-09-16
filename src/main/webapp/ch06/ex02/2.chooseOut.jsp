<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:choose>
	<c:when test='${param.color == 1}'>빨강</c:when> <!-- 빨강 -->
	<c:when test='${param.color == 2}'>노랑</c:when>
	<c:when test='${param.color == 3}'>파랑</c:when>
	<c:when test='${param.color == 1}'>RED</c:when> <!-- 빨강 -->
</c:choose>


<!-- 
	choose action tag

	처음에 발견한 값만 렌더링 후 뒤는 찾지 않음.

	if action tag 일땐, 빨강 RED 을 렌더링 했지만, 
	choose action tag는, 빨강만 렌더링 ( 배타적 )
 -->