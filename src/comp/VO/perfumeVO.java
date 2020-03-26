package comp.VO;

public class perfumeVO {
	
	private int perfume_num;
	private String brand;
	private String name;
	private String gender;
	private String top;
	private String middle;
	private String base;
	private String top_main;
	private String main;
	private String season;
	private String img;
	private String accords;
	private String korean;
	
	

	
	
	public perfumeVO(int perfume_num, String brand, String name, String gender, String top, String middle, String base, String top_main,
			String main, String season, String img, String accords, String korean) {
		super();
		this.perfume_num =perfume_num;
		this.brand = brand;
		this.name = name;
		this.gender = gender;
		this.top = top;
		this.middle = middle;
		this.base = base;
		this.top_main = top_main;
		this.main = main;
		this.season = season;
		this.img = img;
		this.accords = accords;
		this.korean = korean;
	}
	
	
	



	public int getPerfume_num() {
		return perfume_num;
	}



	public void setPerfume_num(int perfume_num) {
		this.perfume_num = perfume_num;
	}



	public String getBrand() {
		return brand;
	}



	public void setBrand(String brand) {
		this.brand = brand;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getTop() {
		return top;
	}



	public void setTop(String top) {
		this.top = top;
	}



	public String getMiddle() {
		return middle;
	}



	public void setMiddle(String middle) {
		this.middle = middle;
	}



	public String getBase() {
		return base;
	}



	public void setBase(String base) {
		this.base = base;
	}



	public String getTop_main() {
		return top_main;
	}



	public void setTop_main(String top_main) {
		this.top_main = top_main;
	}



	public String getMain() {
		return main;
	}



	public void setMain(String main) {
		this.main = main;
	}



	public String getSeason() {
		return season;
	}



	public void setSeason(String season) {
		this.season = season;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
	}



	public String getAccords() {
		return accords;
	}



	public void setAccords(String accords) {
		this.accords = accords;
	}






	public String getKorean() {
		return korean;
	}






	public void setKorean(String korean) {
		this.korean = korean;
	}
	
	
	
	
	
	
	

}
