package vn.com.itqnu.trainingscore.model;

public class LoginInfo {

	private String maSv;
	private String password;

	public LoginInfo(String maSv, String password) {
		super();
		this.maSv = maSv;
		this.password = password;
	}

	public LoginInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getMaSv() {
		return maSv;
	}

	public void setMaSv(String maSv) {
		this.maSv = maSv;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
