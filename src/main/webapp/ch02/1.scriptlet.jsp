<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%> 
<%-- directive 주석
	scriptlet - 안에는 java코드가 들어가고, 밖에는 html 코드가 들어감
	jsp 주석은 class에 들어가지 않음
--%>
<% // scriptlet
	int num1 = 1; // 지역변수
	int num2 = 2;
 %>
 <h2>더하기</h2>
 <%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <!-- expression -->


<!-- 

%! 선언부 %>  -> 전역변수, 함수
% 스크립릿 %> -> 자바코드, 지역변수
%= 출력부 %>  -> 문자열, 변수값, 함수리턴값 출력
%-- JSP주석 --%> 



%@ - tomcat에게 안내

contentType='text/html; charset=utf-8' - client가 사용
pageEncoding='utf-8' - tomcat이 사용

jsp = 
1번줄에 저거 넣고
% % 안에 java코드
그 밖에 html 코드

나중에 과제나 실무할때 프론트개발자한테 코드받고 저렇게 하면됨
 -->