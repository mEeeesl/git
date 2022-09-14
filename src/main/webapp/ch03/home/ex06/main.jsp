<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<h2>컴퓨터 가게</h2>
<form action='cartAddProc.jsp' method='post'>
	<ul>
		<li>본체<input type='checkbox' name='item' value='본체'></li>
		<li>모니터 <input type='checkbox' name='item' value='모니터'></li>
		<li>키보드 <input type='checkbox' name='item' value='키보드'></li>
		
		<button type='submit'>담기</button>
		<button type='submit' formaction='cartOut.jsp'>내 장바구니</button>
	</ul>
</form>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>