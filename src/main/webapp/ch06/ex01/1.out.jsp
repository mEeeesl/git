<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
expression: <%= "hello" %>
scriptlet: <% out.println("hello"); %> <br>
<!-- ▲ expression -->
<!-- ▼ EL - Expression Language -->
EL(Expression Language): ${"hello"}