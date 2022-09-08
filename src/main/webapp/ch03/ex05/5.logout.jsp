<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='5.main.jsp'>Main</a>
<%			//★☆★☆★
	session.invalidate();
%>

<!-- 
	logout 
	session 객체를 없애야한다.
	★☆invalidate() > 자기자신을 없앰
	
	이 파일에서는,
	sesssionA 에서만 user를 생성했으니,
	A하고 B하고 logout하고 B누르면, B는 null이 나옴.
	
 -->