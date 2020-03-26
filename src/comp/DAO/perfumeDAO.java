package comp.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import comp.VO.favoritelistVO;
import comp.VO.layeringlistVO;
import comp.VO.perfumeVO;

public class perfumeDAO {

	Connection conn = null;
	PreparedStatement pst;
	ResultSet rs;
	int cnt = 0;

	private void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe"; // localhost대신 ip주소가 들어갈수도
			String id = "perfume";
			String pw = "1234";
			conn = DriverManager.getConnection(url, id, pw);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<perfumeVO> find_perfume(String gender, String season, String accords) {
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			String sql = "select * from perfumes where gender =? and season = ? and accords = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, gender);
			pst.setString(2, season);
			pst.setString(3, accords);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(8);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				perfumeVO vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return arr;
	}

	public ArrayList<perfumeVO> find_perfume_Layering(String accords) {

		perfumeVO vo = null;
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from perfumes where accords = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, accords);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(8);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}

	public ArrayList<perfumeVO> find_perfumetop5(String gender, String season, String accords) {
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			String sql = "select * from perfumes where perfume_num in (select perfume_num from (select perfume_num, count(perfume_num) as cnt_per from favorite group by perfume_num order by cnt_per desc)) and gender =? and season = ? and accords = ? and rownum<= 5";
			pst = conn.prepareStatement(sql);
			pst.setString(1, gender);
			pst.setString(2, season);
			pst.setString(3, accords);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(8);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				perfumeVO vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return arr;
	}
	
	//즐겨찾기 리스트
	public ArrayList<favoritelistVO> favorite_select(String email) {

		favoritelistVO vo = null;
		ArrayList<favoritelistVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from favorite where email = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String get_email = rs.getString(2);


				vo = new favoritelistVO(perfume_num, get_email);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}

	public ArrayList<perfumeVO> favorite_selectAll(String email) {

		perfumeVO vo = null;
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from perfumes where perfume_num in (select perfume_num from favorite where email = ?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(8);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}
	
	
	public ArrayList<perfumeVO> favorite_layering_selectAll(int what_perfume_num,String email) {

		perfumeVO vo = null;
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from perfumes where perfume_num in (select ? from favorite_layering where email = ?)";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, what_perfume_num);
			pst.setString(2, email);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(8);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}
	
	//매니저 향수 전체조회
	public ArrayList<perfumeVO> Manager_selectAll() {

		perfumeVO vo = null;
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from perfumes";
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(9);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}
	
	// 매니저 향수 브랜드로 검색 결과
	public ArrayList<perfumeVO> Manager_select_brand(String search) {

		perfumeVO vo = null;
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from perfumes where LOWER(brand) like LOWER(?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, "%"+search+"%");
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(9);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}
	
	// 매니저 향수 이름으로 검색 결과
	public ArrayList<perfumeVO> Manager_select_name(String search) {

		perfumeVO vo = null;
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from perfumes where LOWER(name) like LOWER(?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, "%"+search+"%");
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(9);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}
	
	// 매니저 향수 계열로 검색 결과
	public ArrayList<perfumeVO> Manager_select_accords(String search) {

		perfumeVO vo = null;
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from perfumes where LOWER(accords) like LOWER(?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, "%"+search+"%");
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(9);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}
	
	public ArrayList<layeringlistVO> layering_selectAll(String email) {

		layeringlistVO vo = null;
		ArrayList<layeringlistVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from favorite_layering where email = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num1 = rs.getInt(1);
				int perfume_num2 = rs.getInt(2);
				String get_email = rs.getString(3);


				vo = new layeringlistVO(perfume_num1, perfume_num2, get_email);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}
	
	public int delete_favorite(int perfume_num , String email) {
		getConn();				
		try {
			String sql = "delete from favorite where perfume_num = ? and email = ?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, perfume_num);
			pst.setString(2, email);
			cnt = pst.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
		
		
	}

	public int insert_favorite(int perfume_num, String email) {
		getConn();
		try {
			
			String sql = "insert into favorite values(?,?)";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, perfume_num);
			pst.setString(2, email);
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
	
	
	public int insert_favorite_layering(int perfume_num1, int perfume_num2, String email) {
		getConn();
		try {
			
			String sql = "insert into favorite_layering values(?,?,?)";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, perfume_num1);
			pst.setInt(2, perfume_num2);
			pst.setString(3, email);
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
	
	
	public int Manager_insert(String brand, String name, String gender, String top, String middle, String base, String top_main, String main, String season, String img, String accords, String korean) {
		getConn();
		try {
			
			String sql = "insert into perfumes values(increased_num.nextval,?,?,?,?,?,?,?,?,?,?,?,?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, brand);
			pst.setString(2, name);
			pst.setString(3, gender);
			pst.setString(4, top);
			pst.setString(5, middle);
			pst.setString(6, base);
			pst.setString(7, top_main);
			pst.setString(8, main);
			pst.setString(9, season);
			pst.setString(10, img);
			pst.setString(11, accords);
			pst.setString(12, korean);
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
	
	public int Manager_delete(int perfume_num) {
		getConn();				
		try {
			String sql = "delete from perfumes where perfume_num = ?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, perfume_num);
			cnt = pst.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
		
		
	}
	
	// 관리자용 향수 정보 수정
	public int Update(String brand, String name, String top_main, String main, String top, String middle, String base, String img, String accords, int perfume_num) {
		getConn();
		try {
			String sql = "Update perfumes set brand=?,name=?,top_main=?,main=?,top=?,middle=?,base=?,img=?,accords=? where perfume_num = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, brand);
			pst.setString(2, name);
			pst.setString(3, top_main);
			pst.setString(4, main);
			pst.setString(5, top);
			pst.setString(6, middle);
			pst.setString(7, base);
			pst.setString(8, img);
			pst.setString(9, accords);
			pst.setInt(10, perfume_num);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
				close();
		}
		return cnt;
	}
	
	// 매니저 향수 번호로 검색
	public ArrayList<perfumeVO> Manager_select_number(int find_num) {

		perfumeVO vo = null;
		ArrayList<perfumeVO> arr = new ArrayList<>();
		getConn();
		try {
			
			String sql = "select * from perfumes where perfume_num = ?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, find_num);
			rs = pst.executeQuery();

			while (rs.next()) {
				int perfume_num = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				String get_gender = rs.getString(4);
				String top = rs.getString(5);
				String middle = rs.getString(6);
				String base = rs.getString(7);
				String top_main = rs.getString(8);
				String main = rs.getString(9);
				String get_season = rs.getString(10);
				String img = rs.getString(11);
				String get_accords = rs.getString(12);
				String korean = rs.getString(13);

				vo = new perfumeVO(perfume_num, brand, name, get_gender, top, middle, base, top_main, main,
						get_season, img, get_accords, korean);
				arr.add(vo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return arr;

	}
	
	
	
	public int delete_favorite_layering(int perfume_num1, int perfume_num2, String email) {
		getConn();				
		try {
			String sql = "delete from favorite_layering where perfume_num1 = ? and perfume_num2 = ? and email = ?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, perfume_num1);
			pst.setInt(2, perfume_num2);
			pst.setString(3, email);
			cnt = pst.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
		
		
	}

}
