<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	Object user = session.getAttribute("userId");
	
	if(user == null) {
		String userId = "";
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) { // 로그인을 했었더라면 쿠키가 있었을거임
			for(Cookie cookie: cookies)
				if(cookie.getName().equals("userId"))
					userId = cookie.getValue();
		}
%>
		<form action='loginProc.jsp' method='post'>
			ID: <input type='text' name='userId' value='<%= userId %>'/><br>
			PW: <input type='password' name='pw'/><br><br>
			<input type='checkbox' name='isStoreId' value='true'> ID 저장 <!-- check시, true값 -->
			<input type='submit' value='로그인'/>
		</form>
<%
	} else { // 최초 로그인이 아닐 시, 
%>
	<%= user %>님, 환영합니다. &nbsp;
	<a href='logOut.jsp'>로그아웃</a>
<%
	}
%>

<!-- 

	현재 앱에 로그인 되었는지 확인하는법
	-> session에 userId Attribute 유무 
	
	checkbox ( name = isStoreID ) 의 valuet값
	1. on
	2. true 

	환영합니다 메시지 나온다는건
	userId가 있다
	session Attribute userId 있다
	쿠키 있다
	
	로그아웃 누르면 session 이 사라짐 
	
	쿠키는 남아있는상태
	
	로그아웃하고 메인으로가지면, Object user= null인 상태.
	session.getAttribute("userId")가 null이기에
	그래서 로그인 폼이 다시나옴
	
	10초 지나면 쿠키 지워짐
	userId = ""가 됨

 -->