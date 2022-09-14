<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.jsp'>Home</a>

<h3>구매</h3>
<%
	String[] items = request.getParameterValues("item");
	Object bucketObj = session.getAttribute("bucket");
	if(bucketObj != null) {
		List<String> bucket = (List<String>)bucketObj;
		if(bucket.size() > 0) { 
			for(String goods: items){
%>
			<%= goods %>
<%
			}
%>
			<br> 위 <%= items.length%>개의 제품을 구매하시겠습니까?
			<form>
			<button type='button'>예</button> 
			<button type='submit' formaction='cartOut.jsp'>아니요</button>
			</form>
<%
			String msg = request.getParameter("msg");
			if(msg != null) out.println(msg);
		} else out.println("구매할 제품이 없습니다.");
	} else out.println("구매할 제품이 없습니다..");
%>