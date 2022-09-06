<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
본문
<hr>
<jsp:include page='4.footer.jsp'/>
<!-- ▲ action tag = java code로 번역되는 tag 
	속성명 page (논리적) - 현재 page url을 기준으로, 상대주소를 적음.
	
	work folder를 보면, footer class와 includeA class가 생성됨
	-> 서블릿이 2개가 생성되었다는 뜻
	
	url => ch02/4.includA.jsp - work 디렉토리에서 보고있는
	ch02/4.includA.jsp의 서블릿에 붙는 url
	
	includA가 footer 서블릿한테 리퀘스트 던짐.
	리스판스 받아서 통합시켜서 1 페이지로 만든 후 client한테 1개의 통합된 page를 줌
	
	페이지 1개를 만들기위해, 이번엔 servlet이 2개가 생성됨
	
	A include B
	정적인 화면 - include 디렉티브를 사용  ( b가 static할때 )
	동적인 화면 - 자주 바뀔때는, include action tage를 사용 ( b가 dynamic 할때 )
	
	
-->
