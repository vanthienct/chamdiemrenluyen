package vn.com.itqnu.trainingscore.model;

public class SinhVienModel {
	private String maSv;
	private String maLop;
	private String ten;
	private String password;
	private String email;
	private String sdt;
	private String quyen;

	public SinhVienModel(String maSv, String maLop, String ten, String password, String email, String sdt,
			String quyen) {
		super();
		this.maSv = maSv;
		this.maLop = maLop;
		this.ten = ten;
		this.password = password;
		this.email = email;
		this.sdt = sdt;
		this.quyen = quyen;
	}

	public SinhVienModel() {
	}

	public String getMaSv() {
		return maSv;
	}

	public void setMaSv(String maSv) {
		this.maSv = maSv;
	}

	public String getMaLop() {
		return maLop;
	}

	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getQuyen() {
		return quyen;
	}

	public void setQuyen(String quyen) {
		this.quyen = quyen;
	}

}
