package comp.VO;

public class favoritelistVO {
	
	
	private int perfume_num;
	private String email;
	public favoritelistVO(int perfume_num, String email) {
		super();
		this.perfume_num = perfume_num;
		this.email = email;
	}
	public int getPerfume_num() {
		return perfume_num;
	}
	public void setPerfume_num(int perfume_num) {
		this.perfume_num = perfume_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	

}
