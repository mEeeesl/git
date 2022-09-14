<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");

	if(products != null && products.length > 0) {
		List<String> cart = new ArrayList<>();
		
		for(String product: products)
			cart.add(product);
		
		session.setAttribute("cart", cart);
	}
%>
<c:redirect url='cartOut.jsp'/> <!-- 장바구니 확인 -->
<!-- 
	Attribute의 타입은 Object 이다.
	
	reponse에 url을 담았다 = redirect
 -->