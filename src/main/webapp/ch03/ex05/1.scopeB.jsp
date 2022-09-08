<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li><%= pageContext.getAttribute("one") %></li> <!-- null -->
	<li><%= request.getAttribute("two") %></li>	<!-- null -->
	<li><%= session.getAttribute("three") %></li> <!-- 세션 -->
	<li><%= application.getAttribute("four") %></li> <!-- 애플리케이션 -->
</ul>

<!-- 
1.scopeA.jsp와 1.scopeB.jsp는

1. pageContext, request는 끝나서 없어짐
2. session, application은 공유 및 유지.

a가 썼던 request는 redirect call한 순간 사라짐.

client가 1.scopeB.jsp로 request할때 
1.scopeB.jsp의 request가 새로 생기는거


서블릿 상에서 다뤘던 업무상 데이터를 칭하는 용어
= Attribute, parameter

차이점 - Attribute는 get 읽기, set 쓰기 가능
server가 parameter의 get 읽기만 가능한 이유는, 클라이언트가 write 하기때문
Attrinute는 server가 write 함

-->