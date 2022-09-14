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
	
		
	} else { out.println("상품이 없습니다."); 	
%>
	<c:redirect url='main.jsp'>
		<c:param name='msg' value='장바구니에 담을 물건을 선택해주세요.'/>
	</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>