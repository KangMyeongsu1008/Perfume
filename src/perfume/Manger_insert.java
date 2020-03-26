package perfume;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comp.DAO.perfumeDAO;


@WebServlet("/Manger_insert")
public class Manger_insert extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("euc-kr");
			String brand = request.getParameter("brand");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String top = request.getParameter("top");
			String middle = request.getParameter("middle");
			String base = request.getParameter("base");
			String top_main = request.getParameter("top_main");
			String main = request.getParameter("main");
			String season = request.getParameter("season");
			String img = request.getParameter("img");
			String accords = request.getParameter("accords");
			String korean = null;
			
			if(accords.equals("CITRUS SMELLS")) {
				korean ="시트러스";				
			}else if(accords.equals("FLOWERS")) {
				korean ="플로럴";				
			}else if(accords.equals("WOODS AND MOSSES")) {
				korean ="우디";				
			}else if(accords.equals("RESINS AND BALSAMS")) {
				korean ="오리엔탈";				
			}else if(accords.equals("MUSK, AMBER, ANIMALIC SMELLS")) {
				korean ="머스크";				
			}else if(accords.equals("NATURAL AND SYNTHETIC, POPULAR AND WEIRD")) {
				korean ="파우더리";				
			}else if(accords.equals("FRUITS, VEGETABLES AND NUTS")) {
				korean ="플룻티";				
			}else if(accords.equals("GREENS, HERBS AND FOUGERES")) {
				korean ="그린";				
			}
			
			
			perfumeDAO dao = new perfumeDAO();
			dao.Manager_insert(brand, name, gender, top, middle, base, top_main, main, season, img, accords, korean);
			response.sendRedirect("Manager_perfume.jsp");

			
			

		
		
		
		
		
	}

}
