package perfume;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comp.DAO.perfumeDAO;


@WebServlet("/deleteFavorite_layering")
public class deleteFavorite_layering extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
	
		String[] perfume_num = request.getParameterValues("delete_layering");
		int perfume_num1 = Integer.parseInt(perfume_num[0]);
		int perfume_num2 = Integer.parseInt(perfume_num[1]);
		perfumeDAO dao = new perfumeDAO();
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		dao.delete_favorite_layering(perfume_num1, perfume_num2, email);
		response.sendRedirect("layering_favorite.jsp");
	}

}
