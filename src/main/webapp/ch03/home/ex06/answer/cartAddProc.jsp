<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	if(products != null && products.length > 0) { // 상품을 선택하지않고, 담기 누르는걸 제외시킴
		List<String> cart = null; // 장바구니를 담을 변수
		
		Object cartObj = session.getAttribute("cart");
		if(cartObj == null) {// 최초 장바구니 준비 ( user별로 장바구니를 준비 = session )
			cart = new ArrayList<>();
			session.setAttribute("cart", cart);
		} else cart = (List<String>)cartObj; //사용하던 장바구니를 계속 사용
		
		for(String product: products)
			cart.add(product);
	} else {	// 예외흐름
%>
	<c:redirect url='main.jsp'>
		<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
	</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>