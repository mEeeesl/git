<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ol>
	<li>${scope}</li> <!-- 리퀘스트를 받아옴 -->
	<li>${pageScope.scope}</li> <!-- null -->
	<li>${requestScope.scope}</li>
	<li>${sessionScope.scope}</li>
	<li>${applicationScope.scope}</li>
</ol>

<!-- 
	EL은,

	scope가 좁은것부터 큰순으로 찾아오고 끝냄.
	pageContext > request > session > application > null(렌더링은 안함)

 -->