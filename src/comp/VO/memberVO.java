package comp.VO;

public class memberVO {
	
	
	private String email;
	private String pw;
	private String birth;
	private String gender;
	
	
	
	public memberVO(String email, String pw, String birth, String gender) {
		super();
		this.email = email;
		this.pw = pw;
		this.birth = birth;
		this.gender = gender;
	}
	
	
	



	public memberVO(String email, String pw) {
		super();
		this.email = email;
		this.pw = pw;
	}






	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPw() {
		return pw;
	}



	public void setPw(String pw) {
		this.pw = pw;
	}



	public String getBirth() {
		return birth;
	}



	public void setBirth(String birth) {
		this.birth = birth;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
	
	
	

	
	
	
	
	

}
