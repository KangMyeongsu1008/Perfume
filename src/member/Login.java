package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.java.swing.plaf.windows.resources.windows;

import comp.DAO.memberDAO;
import comp.VO.memberVO;


@WebServlet("/Login")
public class Login extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");		
		String pw = request.getParameter("pw");
		HttpSession session = request.getSession();
		memberDAO dao = new memberDAO();
		
		
		
		if (dao.login(email, pw)){
			
			
				
			//session영역에 값을 저장할 때
			//변수 값이 아닌 객체 값 저장가능
			session.setAttribute("email", email);
			response.sendRedirect("Main.jsp");			
		}else {
			response.sendRedirect("Login.jsp");
		}
	}

}
