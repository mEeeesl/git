<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<c:redirect url='5.target.jsp'>
	<c:param name='msg' value='한글'/> <!-- Parameter name & value -->
</c:redirect>

<!-- 
	예외적으로,	
 	user한테 보여지는 파라미터 밸류가 한국어인경우, 한글처리 하는 1번째 방법
 	
 	한글로 적었을 시 보통은 깨질 확률이 있으므로,
 	보통 Parameter value는 영어로 둔다.
 	
 	근데, 위와같이 하면 깨지지 않는다.
 	
 	
 -->