package perfume;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comp.DAO.perfumeDAO;


@WebServlet("/Manager_delete")
public class Manager_delete extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String[] delete = request.getParameterValues("perfume_num");
			int perfume_num = Integer.parseInt(delete[1]);
			perfumeDAO dao= new perfumeDAO();
			dao.Manager_delete(perfume_num);
			response.sendRedirect("Manager_perfume.jsp");
		
	}

}
