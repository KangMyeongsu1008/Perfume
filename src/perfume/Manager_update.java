package perfume;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comp.DAO.perfumeDAO;


@WebServlet("/Manager_update")
public class Manager_update extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("euc-kr");
				String brand = request.getParameter("brand");
				String name = request.getParameter("name");
				String top_main = request.getParameter("top_main");
				String main = request.getParameter("main");
				String top = request.getParameter("top");
				String middle = request.getParameter("middle");
				String base = request.getParameter("base");
				String img = request.getParameter("img");
				String accords = request.getParameter("accords");
				int perfume_num = Integer.parseInt(request.getParameter("perfume_num"));
				
				perfumeDAO dao = new perfumeDAO();
				dao.Update(brand, name, top_main, main, top, middle, base, img, accords, perfume_num);
				response.sendRedirect("Manager_perfume.jsp");
		

		
		
	}

}
