package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex01sum")
public class ex01sum extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));

		String result = num1 + "�� " + num2 + "�� ���� " + (num1 + num2) + " �Դϴ�.";

		// �ǵ����ֱ� ���� ��ü -> response

		// Ajax���� ���� ������ �� PrintWriter ��ü

		// response ���ڵ�
		response.setCharacterEncoding("UTF-8");

		// Ajax�� Ư¡ : ���ڵ� ����� UTF-8�� �� �� ����

		PrintWriter out = response.getWriter();
		
		out.print(result);

	}

}