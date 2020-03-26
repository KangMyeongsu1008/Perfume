package perfume;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.java.swing.plaf.windows.resources.windows;

import comp.DAO.perfumeDAO;


@WebServlet("/Favorite_delete_result")
public class Favorite_delete_result extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		int perfume_num = Integer.parseInt( request.getParameter("perfume_num"));
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");		
		perfumeDAO dao = new perfumeDAO();
		dao.delete_favorite(perfume_num, email);
//		RequestDispatcher rd = request.getRequestDispatcher("Result.jsp");
//		rd.forward(request, response);
		response.sendRedirect("Result.jsp");
		

	}

}
