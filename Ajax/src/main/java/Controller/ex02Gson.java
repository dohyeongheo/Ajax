package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Model.MemberDTO;

@WebServlet("/ex02Gson")
public class ex02Gson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// DTO 객체에 값을 넣어서
		// ArrayList에 담고
		// ArrayList -> json 형식으로 전송
		
		MemberDTO member1 = new MemberDTO("email1", "010-1111-1111", "광주 동구1");
		MemberDTO member2 = new MemberDTO("email2", "010-1111-1112", "광주 동구2");
		MemberDTO member3 = new MemberDTO("email3", "010-1111-1113", "광주 동구3");
		MemberDTO member4 = new MemberDTO("email4", "010-1111-1114", "광주 동구4");
		
		// ArrayList
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(member1);
		list.add(member2);
		list.add(member3);
		list.add(member4);
		
		// 데이터 보내기
		// Gson 객체 생성
		Gson gson = new Gson();
		
		// java -> json(문자열)
		// gson의 toJson() -> String타입으로 Json을 만들어줌
		String json = gson.toJson(list);
		// gson.toJson(member2);
		// gson.toJson(member3);
		// gson.toJson(member4);
		
		// PrintWriter 객체 생성 전에 인코딩
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(json);
		
		
		
		
		
	}

}
