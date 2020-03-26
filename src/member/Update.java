package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comp.DAO.memberDAO;

@WebServlet("/Update")
public class Update extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("euc-kr");
			memberDAO dao = new memberDAO();
			String[] email = request.getParameterValues("update_email");
			String pw = request.getParameter("update_pw");
			dao.Update(pw, email[1]);
			response.sendRedirect("All_member.jsp");
		
	}

}
