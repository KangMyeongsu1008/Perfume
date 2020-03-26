package perfume;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comp.DAO.perfumeDAO;


@WebServlet("/Favorite_delete_resultT5")
public class Favorite_delete_resultT5 extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		int perfume_num = Integer.parseInt( request.getParameter("perfume_num"));
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");		
		perfumeDAO dao = new perfumeDAO();
		dao.delete_favorite(perfume_num, email);
		response.sendRedirect("ResultTop5.jsp");
		
	}

}
