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
				korean ="��Ʈ����";				
			}else if(accords.equals("FLOWERS")) {
				korean ="�÷η�";				
			}else if(accords.equals("WOODS AND MOSSES")) {
				korean ="���";				
			}else if(accords.equals("RESINS AND BALSAMS")) {
				korean ="������Ż";				
			}else if(accords.equals("MUSK, AMBER, ANIMALIC SMELLS")) {
				korean ="�ӽ�ũ";				
			}else if(accords.equals("NATURAL AND SYNTHETIC, POPULAR AND WEIRD")) {
				korean ="�Ŀ����";				
			}else if(accords.equals("FRUITS, VEGETABLES AND NUTS")) {
				korean ="�÷�Ƽ";				
			}else if(accords.equals("GREENS, HERBS AND FOUGERES")) {
				korean ="�׸�";				
			}
			
			
			perfumeDAO dao = new perfumeDAO();
			dao.Manager_insert(brand, name, gender, top, middle, base, top_main, main, season, img, accords, korean);
			response.sendRedirect("Manager_perfume.jsp");

			
			

		
		
		
		
		
	}

}
