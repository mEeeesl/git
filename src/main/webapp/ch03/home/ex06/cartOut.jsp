<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.jsp'>메인</a>
<h3>장바구니</h3>
<%  //cart 배열을 session에 넣는 순간 String으로 casting 됨
   Object cartObj = session.getAttribute("cart");

   if(cartObj != null) {
      List<String> cart = (List<String>)cartObj;
      if(cart.size() > 0) {   // 물건이 있으면
%>
	<form action='cartDelProc.jsp' method='post'>
         <ul>
<%
            for(String product: cart) {
%>         
               <li><%= product %>  <input type='checkbox' name='delItem' value='delItem'/> </li>
<%
            }
%>
         </ul>
         <button type='submit'>구매</button>
         <button type='submit' formaction='cartDelProc.jsp'>삭제</button>
	</form>
<%
      } else out.println("장바구니에 물건이 없습니다.");
   } else out.println("장바구니가 없습니다.");
%>