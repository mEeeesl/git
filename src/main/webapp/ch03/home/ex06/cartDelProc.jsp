<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<%
	String[] products = request.getParameterValues("product");
	String[] delItems = request.getParameterValues("delItem");
	List<String> cart = new ArrayList<>();
	
	
	if(products != null && products.length > 0) {
			for(String product: products) {
				cart.add(product);
			}
				
			if(delItems != null) {
				for(String delItem: delItems)
					cart.remove(delItem);
			}
			
			session.setAttribute("cart", cart);
	}

%>
<c:redirect url='cartOut.jsp'/> <!-- 장바구니 확인 -->



<!-- 장바구니 물건 삭제 -->