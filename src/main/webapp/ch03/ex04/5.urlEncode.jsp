<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.net.URLEncoder' %> <!-- url을 encoding하는 기능 -->
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<% String url = "5.target.jsp?msg=" + URLEncoder.encode("한글", "utf-8"); %>

<c:redirect url='<%= url %>'/>

<!-- 
	예외적으로, 
	
	보여지는 파라미터 밸류가 한국어인경우, 한글처리 하는 2번째 방법
	
	= URLEncode.encode("저장할 이름", "저장할 값")
	
	getAttrivute 할 때는, URLDecoder.decode()
 	
 	한글로 적었을 시 보통은 깨질 확률이 있으므로,
 	보통 Parameter value는 영어로 둔다.
 	
 	근데, 위와같이 하면 깨지지 않는다.
 -->