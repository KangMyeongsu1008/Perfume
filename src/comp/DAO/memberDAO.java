package comp.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import comp.VO.memberVO;

public class memberDAO {

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

	// 회원가입
	public int Joinp(String email, String pw, String birth, String gender) {
		getConn();
		try {
			
			String sql = "insert into member values(?,?,?,?)";
			pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, pw);
			pst.setString(3, birth);
			pst.setString(4, gender);
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
	}
		return cnt;

	}

	// 사용자용 회원탈퇴 및 관리자용 회원 삭제
	public int DeleteEmail(String email) {
		getConn();
		try {
			
			String sql = "delete from member where email = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
	}
		return cnt;
	}

	// 관리자용 회원수정 및 사용자용 회원수정
	public int Update(String pw, String email) {
		getConn();
		try {
			String sql = "Update member set pw=? where email = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, pw);
			pst.setString(2, email);
			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
				close();
		}
		return cnt;
	}

	// 로그인 체크기능
	public boolean login(String email, String pw) {
		boolean login = false;
		memberVO vo = null;
		getConn();
		
		try {
			
			String sql = "Select * from member where email = ? and pw = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, pw);
			rs = pst.executeQuery();

			if (rs.next()) {
				// login = true;
				String get_email = rs.getString(1);
				String get_pw = rs.getString(2);

				vo = new memberVO(get_email, get_pw);
				login =true;

			} else {
				login = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {			
				close();
		}
		return login;
	}

	// 관리자용 회원 전체조회
	public ArrayList<memberVO> SelectAll() {
		ArrayList<memberVO> arr = new ArrayList<memberVO>();
		try {

			getConn();
			String sql = "Select * from member";

			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();

			while (rs.next()) {
				String email = rs.getString(1);
				String pw = rs.getString(2);

				memberVO vo = new memberVO(email, pw);
				arr.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return arr;

	}

}
