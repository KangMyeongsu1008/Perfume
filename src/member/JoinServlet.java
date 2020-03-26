package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comp.DAO.memberDAO;
import comp.VO.memberVO;


@WebServlet("/Join")
public class JoinServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String confirm_pw = request.getParameter("confirm_pw");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		System.out.println(birth);
		
		
		if (confirm_pw.equals(pw)) {
			memberDAO dao = new memberDAO();
			int cnt = dao.Joinp(email, pw, birth, gender);	
			if(cnt>0) {
				memberVO vo = memberVO(email,pw);
				request.setAttribute("vo", vo);
				

				response.sendRedirect("Main.jsp");
			}
			
		}else {
			PrintWriter out = response.getWriter();  
			response.getCharacterEncoding();
			response.sendRedirect("Join.jsp");
			

			
		}
		


	
	}

	private memberVO memberVO(String email, String pw) {
		// TODO Auto-generated method stub
		return null;
	}

}
