<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] items = request.getParameterValues("item");
	if(items != null && items.length > 0) {
		List<String> bucket = null;
		
		Object bucketObj = session.getAttribute("bucket");
		if(bucketObj == null) {
			bucket = new ArrayList<>();
			session.setAttribute("bucket", bucket);
		} else bucket = (List<String>)bucketObj;
		
		for(String item: items)
			bucket.add(item);
%>
		<c:redirect url='main.jsp'/>
<%
	} else { 
%>
	<c:redirect url='main.jsp'>
		<c:param name='msg' value='장바구니에 담을 물건을 선택해주세요.'/>
	</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>