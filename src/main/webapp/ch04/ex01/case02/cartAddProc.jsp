<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");

	if(products != null) {
		String cart = "";
		for(String product: products) cart += product + "/"; // cart = String
				
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie);
	}
%>
<c:redirect url='cartOut.jsp'/>

<!--  
장바구니를 쿠키로 해야지.
쿠키의 데이터 타입은 text,
장바구니를 String으로 해야함.

전에는 장바구니를 session으로 했고 session의 타입은 Object 객체였음,
지금은 장바구니를 쿠키로 구현할거임, 쿠키의 타입은 text임, 장바구니를 String으로 해야함

setMaxAge(int seconds)- 쿠키 만료 기간 지정 (※ms X)
 -->