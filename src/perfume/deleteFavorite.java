package perfume;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comp.DAO.perfumeDAO;
import comp.VO.memberVO;

@WebServlet("/deleteFavorite")
public class deleteFavorite extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		int perfume_num = Integer.parseInt(request.getParameter("delete"));
		perfumeDAO dao = new perfumeDAO();
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		dao.delete_favorite(perfume_num, email);
		response.sendRedirect("favorite.jsp");
		
		
	}

}
