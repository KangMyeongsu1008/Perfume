package comp.VO;

public class layeringlistVO {
	
	private int perfume_num1;
	private int perfume_num2;
	private String email;
	
	
	
	public layeringlistVO(int perfume_num1, int perfume_num2, String email) {
		super();
		this.perfume_num1 = perfume_num1;
		this.perfume_num2 = perfume_num2;
		this.email = email;
	}


	public int getPerfume_num1() {
		return perfume_num1;
	}


	public void setPerfume_num1(int perfume_num1) {
		this.perfume_num1 = perfume_num1;
	}


	public int getPerfume_num2() {
		return perfume_num2;
	}


	public void setPerfume_num2(int perfume_num2) {
		this.perfume_num2 = perfume_num2;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

	
	
	
	
	
	
	
}
