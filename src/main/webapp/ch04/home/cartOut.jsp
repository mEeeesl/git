<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer'%>
<a href='main.jsp'>진열대</a><br>
<h3>장바구니</h3>
<%
   String cart = ""; // 장바구니가 없는경우
   Cookie[] cookies = request.getCookies(); //리퀘스트로 쿠키를 꺼내고
   for(Cookie cookie: cookies)
      if(cookie.getName().equals("cart")) 
         cart = cookie.getValue();
   
   if(cart != "") {
      StringTokenizer products = new StringTokenizer(cart, "/");
%>
      <form action='cartDelProc.jsp' method='post'>
         <ul>
<%
            String product = "";
            while(products.hasMoreTokens()) {
               product = products.nextToken();
%>
               <li><%= product %> <input type='checkbox' name='product' value='<%= product %>'/></li>               
<%
            }
%>
         </ul>
         <button type='submit'>빼기</button>
      </form>
<%
      String msg = request.getParameter("msg");
      if(msg != null) out.println(msg);
   } else out.println("장바구니에 물건이 없습니다.");
%>