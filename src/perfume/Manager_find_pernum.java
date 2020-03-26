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
import comp.VO.perfumeVO;


@WebServlet("/Manager_find_pernum")
public class Manager_find_pernum extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String per_num = request.getParameter("perfume_num");
		int perfume_num = Integer.parseInt(per_num);
		perfumeDAO dao= new perfumeDAO();
		ArrayList<perfumeVO> detail_arr = dao.Manager_select_number(perfume_num);
		HttpSession session = request.getSession();
		session.setAttribute("detail_arr", detail_arr);
		response.sendRedirect("Manager_detailperfume.jsp");
		
	}

}
