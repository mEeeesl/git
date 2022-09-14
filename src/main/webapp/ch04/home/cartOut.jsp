<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.jsp'>메인</a>
<%
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();	

	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue();
			st = new StringTokenizer(tmp, "/");
			while(st.hasMoreTokens())
				cart.add(st.nextToken());
		}
	}
	
	if(cart.size() > 0) {
%>		
		<form>
			<ul>
<%
				for(String product: cart) {
%>			
					<li><%= product %> <input type='checkbox' name='product' value='<%= product %>'></li>
<%
				}
%>				
			</ul>
			<button type='submit'>구매</button>
			<button type='submit' formaction='cartDelProc.jsp'>삭제</button>
		</form>
<%
		String msg = request.getParameter("msg");
		if(msg != null) out.println(msg);
	} else out.println("물건이 없습니다.");
%>


<!-- 

cart의 값을 token으로 쪼갤거임, 구분자 '/'를 사용해서

ex) cart= 노트북 / 모니터
이걸 노트북과 모니터로 쪼갬

 -->