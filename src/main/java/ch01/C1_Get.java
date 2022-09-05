package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// url 수동으로 할당하기 ("context? 후의 url") ( Tomcat이 풀주소 할당 http://~ )
@WebServlet("/ch01/get/add") // > Annotation의 값은 context 내에서 유일해야함
public class C1_Get extends HttpServlet {  
	@Override // 기본 메소드들
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		//res 채우기 - html로 작성되는 text를 넣기 ( res header에 저장 )
		res.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = res.getWriter(); // ( res body에 저장 - res로 만들어내었기에 )
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}

// http://localhost:80/servlet/ch01/get/add
// localhost = Machine의 주소
// localhost:80 = Tomcat의 주소
// /servlet = context Path의 주소 (url에 이름을 준거 = context Path) -> /hello로 바꾸면 http://localhost/hello/ch01/get/add 이게 됨
// /ch01/get/add = Annotation의 주소 ( @WebServlet("/ch01/get/add" )
// Annotation에는 상대주소를 적자.


/* HttpServlet
 * 
 * 자바언어로 웹앱을 만들기 위해서 사용
 * 
 * request의 타입은 5가지
 * 그 중 Get, 읽기 ( <=> Post 쓰기 ) - html <form> - 쓰기
 *  
 * doGet = request 받은게, get일때 call됨.
 * doGet method는 Tomcat(Servlet container)이 call한다.
 * 객체형태로 데이터가 정리되어있으면 된다.
 * 리턴 타입 = HttpServletRequest 
 *  
 * throw해도 Servlet container가 받는다.
 * Servlet container에는 JRE가 들어가 있다.
 * servlet이 하는일은 다이나믹하게 html 코드를 만든다.
 * 
 * 자바 버츄어머신과 서블릿컨테이너는 관점의 차이이다.
 * 서블릿 컨테이너 - 서비스 관점
 * 
 * req는 채워져있고
 * res는 우리가 채워야함 - 업무를 처리할 로직을 채워야함
 * 
 * 서블릿이 하는일은 html 코드를 만드는 일
 * 
 * res에 담는 주소에는 context path가 포함되지 않게 해야한다. ★
 * context path가 포함된 주소 = 절대주소
 * context path가 포함되지 않은 주소 = 상대주소
 * 
 * 절대주소를 적으면 안좋은데,
 * 절대주소를 사용해야만 하는 경우
 * > 다른 주소에 있는, 서버를 나타낼 때
 * 
 *  ( 다음 창인데, 네이버로 가는 창 들어 갈 때 )
 * 
 *  get/add가 기준이된 상태로 상대주소의 상대주소가 있다...
 *  
 * 
 * http://localhost/servlet/ch01/1.get.html(나)
 * +
 * get/add
 * =
 * http://localhost/servlet/ch01/get/add
 * 
 */
