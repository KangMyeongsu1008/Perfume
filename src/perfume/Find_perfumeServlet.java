package perfume;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comp.DAO.perfumeDAO;
import comp.VO.perfumeVO;
import javafx.scene.control.Alert;


@WebServlet("/Find_perfumeServlet")
public class Find_perfumeServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();

	
		//String[] accords  =request.getParameterValues("accords");
		String[] accords  = (String[]) session.getAttribute("accords");
		perfumeDAO dao = new perfumeDAO();
		
		
		
		String genders = (String) session.getAttribute("gender");
		String seasons = (String) session.getAttribute("season");
		
		HashMap<Integer, ArrayList<perfumeVO>> hash = new HashMap<Integer, ArrayList<perfumeVO>>();
		for (int i = 0; i < accords.length; i++) {
			ArrayList<perfumeVO> vo = dao.find_perfume(genders, seasons, accords[i]);
			
				hash.put(i, vo);
			
		}
		
		if (hash.size() > 0) {
		
			response.sendRedirect("Result.jsp");
			session.setAttribute("hash", hash);	
		} else {

			response.sendRedirect("Gender.jsp");
		}
		

	



		
	}


}
