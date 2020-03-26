package perfume;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comp.DAO.perfumeDAO;
import comp.VO.memberVO;


@WebServlet("/Favorite_layering_insert")
public class Favorite_layering_insert extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String [] layering = request.getParameterValues("layering");
		
		int perfume_num1 = Integer.parseInt(layering[0]);
		int perfume_num2 = Integer.parseInt(layering[1]);
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		perfumeDAO dao = new perfumeDAO();
		dao.insert_favorite_layering(perfume_num1, perfume_num2, email);		
		session.setAttribute("perfume_num1", perfume_num1);
		session.setAttribute("perfume_num2", perfume_num2);
		response.sendRedirect("layering_result.jsp");
		
		
		
		
	}

}
