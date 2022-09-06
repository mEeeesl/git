<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String userName = request.getParameter("userName");
	String age = request.getParameter("age");
	String birthday = request.getParameter("birthday");
%>
<h3>사용자</h3> <!-- out.write --> 
<ul>
	<li>이름: <%= userName %></li> <!-- %= out.print % -->
	<li>나이: <%= age %></li>
	<li>생일: <%= birthday %></li>
</ul>
<!-- userOut.jsp가 실행된다는건 request를 받아야 servlet이 실행되는거래  -->

<!-- form을 submit시, 이름 나이 생일 3개의 파라미터가 저장이됨(write)
	request를 받으면, 파라미터3개가 들어있을거고 그걸 여기서 읽을거래 = get (read)
	
	다 HTML은 String으로 될거래
	
	스프링 배우면 getParameter니 뭐니 이런거 안쓴대 개념만 익히래 지금은

-->