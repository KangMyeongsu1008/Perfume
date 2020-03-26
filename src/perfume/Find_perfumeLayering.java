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


@WebServlet("/Find_perfumeLayering")
public class Find_perfumeLayering extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		String[] accords = request.getParameterValues("accords");
		String kor_accord = request.getParameter("kor_accord");
		session.setAttribute("kor_accord", kor_accord);
		
	
		
		perfumeDAO dao = new perfumeDAO();		
		HashMap<Integer, ArrayList<perfumeVO>> hash2 = new HashMap<Integer, ArrayList<perfumeVO>>();
		ArrayList<perfumeVO> vo = new ArrayList<perfumeVO>();
		for (int i = 0; i < accords.length; i++) {
			vo = dao.find_perfume_Layering(accords[i]);
			hash2.put(i, vo);
			
		}
		
		session.setAttribute("hash2", hash2);	
		response.sendRedirect("layering_result.jsp");

		
	}



}
