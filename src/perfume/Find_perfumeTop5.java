package perfume;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comp.DAO.perfumeDAO;
import comp.VO.perfumeVO;


@WebServlet("/Find_perfumeTop5")
public class Find_perfumeTop5 extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		perfumeDAO dao = new perfumeDAO();
	
		String[] accords  =request.getParameterValues("accords");	
		
		String genders = (String) session.getAttribute("gender");
		String seasons = (String) session.getAttribute("season");
		session.setAttribute("accords", accords);
		HashMap<Integer, ArrayList<perfumeVO>> hash3 = new HashMap<Integer, ArrayList<perfumeVO>>();
	

		for (int i = 0; i < accords.length; i++) {
			ArrayList<perfumeVO> vo = dao.find_perfumetop5(genders, seasons, accords[i]);

				hash3.put(i, vo);
			
		}
		
		if (hash3.size() > 0) {
		
			response.sendRedirect("ResultTop5.jsp");
			session.setAttribute("hash3", hash3);	
		} else {

			response.sendRedirect("Gender.jsp");
		}
	}

}
