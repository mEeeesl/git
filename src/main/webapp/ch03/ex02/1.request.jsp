<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li>URL: <%= request.getRequestURL() %></li> <!-- http://localhost/servlet/ch03/ex02/1.request.jsp -->
	<li>URI: <%= request.getRequestURI() %></li> <!-- /servlet/ch03/ex02/1.request.jsp -->
	<li>프로토콜: <%= request.getProtocol() %></li> <!-- HTTP/1.1 -->
	<li>서버: <%= request.getServerName() %></li> <!-- localhost -->
	<li>ContextPath: <%= request.getContextPath() %></li> <!-- /servlet -->
	<li>QueryString: <%= request.getQueryString() %></li> <!-- null  - 파라미터 -->
	<li>요청방식: <%= request.getMethod() %></li> <!-- GET -->
	<li>포트번호: <%= request.getServerPort() %></li>
</ul>

<!-- jsp - class - servlet이 일함 -->
<!-- html - ? -->
<!-- request type을 따로 정하지 않으면, get이 기본값
	post type을 하려면, form - method='post'
 -->
