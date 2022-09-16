<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li>${user}</li> <!-- requestScope 렌더링 -->
	<li>${user.userName}</li>
	<li>${pageScore.user.userName}</li> <!-- null -->
	<li>${requestScope.user.userName}</li>
	<li>${sessionScope.user.userName}</li>
	<li>${applicationScope.user.userName}</li>
	 
</ul>

<!--  
	domain에
	getter를 지정해서, 변수들을 읽어들일 수 있다.
	
	${AttributeName}
	
	spring에서 자주쓸거니 잘 익혀두셈
 -->