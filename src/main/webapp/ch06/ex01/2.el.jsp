<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
String: ${"hello"} <br>
int: ${10} <br>
double: ${10.0} <br>
boolean: ${true} <br>
null: ${null} <%-- %=null %> error --%> 

<hr>

\${ 5 * 2 }: ${ 5 * 2 } <br>
${ 5 > 2 } <br>
${ 5 > 2 ? 5 : 2 } <br>
${ 5 > 2 || 5 < 2 } 


<%-- %=null %> = Error --%>

<!--
	el은  %=null %> 제외하곤, 여러가지를 사용할 수 있나보다.  	
 -->