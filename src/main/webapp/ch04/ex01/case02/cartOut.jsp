<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.html'>메인</a>
<%
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();	

	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue();
			st = new StringTokenizer(tmp, "/");	// new StringTokenizer(문자열, 구분자)
			while(st.hasMoreTokens())			// hasMoreTokens() - StringTokenizer에 사용할 수 있는 토큰이 더 있는지 (있으면 true)
				cart.add(st.nextToken());		// nextToken() - StringTokenizer에서 다음 토큰을 불러옴
		}
	}
	
	if(cart.size() > 0) {
%>		
		<ul>
<%
			for(String product: cart) {
%>			
				<li><%= product %></li>
<%
			}
%>				
		</ul>
<%
	} else out.println("물건이 없습니다.");
%>


<!-- 

cart의 값을 token으로 쪼갤거임, 구분자 '/'를 사용해서

ex) cart= 노트북 / 모니터
이걸 노트북과 모니터로 쪼갬

 -->