<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] items = request.getParameterValues("item"); // 선택한 items
	Object bucketObj = session.getAttribute("bucket"); // 장바구니 목록

	if(bucketObj != null) {
		List<String> bucket = (List<String>)bucketObj; // 장바구니 목록 배열화
		
		if(items != null) {
			for(String item: items)
				bucket.remove(item);
		} else {
%>
			<c:set var='msg' value='장바구니에서 삭제할 물건을 선택해주세요.'/>
<%
		}
	} else {
%>
			<c:set var='msg' value='장바구니가 없습니다.'/>
<%
	}
%>
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/>
</c:redirect>