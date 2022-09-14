<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	
	StringTokenizer st = null;
	
	if(products != null) {
		String cart = "";
		for(String product: products) 
			cart = product + "/"; 
			
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	} else out.println("제품이 없습니다.");
%>
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/>
</c:redirect>
