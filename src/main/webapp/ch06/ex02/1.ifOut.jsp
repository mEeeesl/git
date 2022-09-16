<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:if test='${param.color == 1}'>빨강</c:if> <!-- 빨강 RED -->
<c:if test='${param.color == 2}'>노랑</c:if>
<c:if test='${param.color == 3}'>파랑</c:if>
<c:if test='${param.color == 1}'>RED</c:if> <!-- 빨강 RED -->



<!-- 
	action tag (if)와, EL의 조합
	 
	if action tag 일땐, 빨강 RED 을 렌더링함.
	
	 
	choose action tag
	처음에 발견한 값만 렌더링 후 뒤는 찾지 않음.
	choose action tag는, 빨강만 렌더링 ( 배타적 )
 -->
	
	
	EL을 action tag의 속성값으로 표현하는것에 익숙해지자.
 -->