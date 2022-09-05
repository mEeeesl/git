<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%> 
<%-- directive 주석
	scriptlet - 안에는 java코드가 들어가고, 밖에는 html 코드가 들어감
--%>
<% // scriptlet
	int num1 = 1;
	int num2 = 2;
 %>
 <h2>더하기</h2>
 <%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <!-- expression -->


<!-- 

%@ - tomcat에게 안내

contentType='text/html; charset=utf-8' - client가 사용
pageEncoding='utf-8' - tomcat이 사용

jsp = 
1번줄에 저거 넣고
% % 안에 java코드
그 밖에 html 코드

나중에 과제나 실무할때 프론트개발자한테 코드받고 저렇게 하면됨
 -->