<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%!
   public int add(int num1, int num2) {
      return num1 + num2;
   }   

   int num1 = 1; // 멤버변수
%>
<%
   int num2 = 2; // 지역변수
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %>
<!-- 
%! 선언부 %>  -> 전역변수, 멤버변수, 함수
% 스크립릿 %> -> 코딩, 지역변수
%=출력부 %>  ->문자열, 변수값, 함수리턴값 출력 
-->
<!--  jsp service에서 add method를 call한 것 -->
<!-- declare - 멤버 메서드(jsp service - servlet class)를 추가하고싶을때 사용 -->
<!-- num1, num2, add(num1, num2) = print -->
<!--  + =  => write -->