package vn.com.itqnu.trainingscore.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sinhvien")
public class SinhVien {

	@Id
	@Column(name = "MaSV")
	private String maSv;

	@Column(name = "MaLop")
	private String maLop;

	@Column(name = "Ten")
	private String ten;

	@Column(name = "Password")
	private String password;

	@Column(name = "Email")
	private String email;

	@Column(name = "Sdt")
	private String sdt;

	@Column(name = "Quyen")
	private String quyen;

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
