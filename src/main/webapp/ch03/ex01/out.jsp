<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	for(int i = 0; i < 10; i++)
		out.print(i + "&nbsp;"); // response - htmlcode로 전달됨
%>
<!-- out 객체는, 
print나 write를 method를 이용하고, 파라미터로 html코드를 넣음 -->