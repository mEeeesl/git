package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// url �������� �Ҵ��ϱ� ("context? ���� url") ( Tomcat�� Ǯ�ּ� �Ҵ� http://~ )
@WebServlet("/ch01/get/add") // > Annotation�� ���� context ������ �����ؾ���
public class C1_Get extends HttpServlet {  
	@Override // �⺻ �޼ҵ��
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		//res ä��� - html�� �ۼ��Ǵ� text�� �ֱ� ( res header�� ���� )
		res.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = res.getWriter(); // ( res body�� ���� - res�� �������⿡ )
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}

// http://localhost:80/servlet/ch01/get/add
// localhost = Machine�� �ּ�
// localhost:80 = Tomcat�� �ּ�
// /servlet = context Path�� �ּ� (url�� �̸��� �ذ� = context Path) -> /hello�� �ٲٸ� http://localhost/hello/ch01/get/add �̰� ��
// /ch01/get/add = Annotation�� �ּ� ( @WebServlet("/ch01/get/add" )
// Annotation���� ����ּҸ� ����.


/* HttpServlet
 * 
 * �ڹپ��� ������ ����� ���ؼ� ���
 * 
 * request�� Ÿ���� 5����
 * �� �� Get, �б� ( <=> Post ���� ) - html <form> - ����
 *  
 * doGet = request ������, get�϶� call��.
 * doGet method�� Tomcat(Servlet container)�� call�Ѵ�.
 * ��ü���·� �����Ͱ� �����Ǿ������� �ȴ�.
 * ���� Ÿ�� = HttpServletRequest 
 *  
 * throw�ص� Servlet container�� �޴´�.
 * Servlet container���� JRE�� �� �ִ�.
 * servlet�� �ϴ����� ���̳����ϰ� html �ڵ带 �����.
 * 
 * �ڹ� �����ӽŰ� ���������̳ʴ� ������ �����̴�.
 * ���� �����̳� - ���� ����
 * 
 * req�� ä�����ְ�
 * res�� �츮�� ä������ - ������ ó���� ������ ä������
 * 
 * ������ �ϴ����� html �ڵ带 ����� ��
 * 
 * res�� ��� �ּҿ��� context path�� ���Ե��� �ʰ� �ؾ��Ѵ�. ��
 * context path�� ���Ե� �ּ� = �����ּ�
 * context path�� ���Ե��� ���� �ּ� = ����ּ�
 * 
 * �����ּҸ� ������ ��������,
 * �����ּҸ� ����ؾ߸� �ϴ� ���
 * > �ٸ� �ּҿ� �ִ�, ������ ��Ÿ�� ��
 * 
 *  ( ���� â�ε�, ���̹��� ���� â ��� �� �� )
 * 
 *  get/add�� �����̵� ���·� ����ּ��� ����ּҰ� �ִ�...
 *  
 * 
 * http://localhost/servlet/ch01/1.get.html(��)
 * +
 * get/add
 * =
 * http://localhost/servlet/ch01/get/add
 * 
 */
