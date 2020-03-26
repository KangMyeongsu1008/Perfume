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

@WebServlet("/Manager_find")
public class Manager_find extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String search_op = request.getParameter("search_op");
		String search = request.getParameter("search");
		System.out.println(search_op);
		System.out.println(search);
		perfumeDAO dao = new perfumeDAO();
		ArrayList<perfumeVO> arr = null;	
		HttpSession session = request.getSession();
		
		
		if(search_op.equals("brand")) {
			arr = dao.Manager_select_brand(search);				
			session.setAttribute("arr", arr);
			System.out.println(session.getAttribute("arr"));
		}
		else if(search_op.equals("name")) {
			arr = dao.Manager_select_name(search);			
			session.setAttribute("arr", arr);						
		}
		else if(search_op.equals("accords")) {
			arr = dao.Manager_select_accords(search);			
			session.setAttribute("arr", arr);
		}
		

		response.sendRedirect("Manager_perfume_result.jsp");
		
		
		
	}

}
