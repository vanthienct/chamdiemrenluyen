package vn.com.itqnu.trainingscore.service;

import java.util.List;

import vn.com.itqnu.trainingscore.entity.SinhVien;
import vn.com.itqnu.trainingscore.model.LoginInfo;
import vn.com.itqnu.trainingscore.model.SinhVienModel;

public interface SinhVienService {
	SinhVien login(LoginInfo loginInfo);
	
	List<SinhVien> getAllSinhVien();
	
	SinhVien createSinhVien(SinhVienModel sinhVienModel);
	
	SinhVien updateSinhVien(SinhVien sinhVien);
	
	void deleteSinhVien(String maSv);
}
