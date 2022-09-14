<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.jsp'>Home</a>

<h2>내 장바구니</h2> 
<%
	Object bucketObj = session.getAttribute("bucket");
	if(bucketObj != null) {
		List<String> bucket = (List<String>)bucketObj;
		if(bucket.size() > 0) {
%>
			<form method='post'>
				<ul>
<%
					for(String item: bucket) {
%>				
						<li> <%= item %> <input type='checkbox' name='item' value='<%= item %>'></li>
<%
					}
%>						
				</ul>
				<button type='submit' formaction='buy.jsp'>구매하기</button>
				<button type='submit' formaction='cartDelProc.jsp'>삭제하기</button>
			</form>
<%			
			String msg = request.getParameter("msg");
			if(msg != null) out.println(msg);
		} else out.println("장바구니에 물건이 없습니다.");
	} else out.println("장바구니가 없습니다.");
%>
