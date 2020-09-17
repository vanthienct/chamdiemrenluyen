package vn.com.itqnu.trainingscore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.itqnu.trainingscore.entity.SinhVien;
import vn.com.itqnu.trainingscore.model.LoginInfo;
import vn.com.itqnu.trainingscore.model.SinhVienModel;
import vn.com.itqnu.trainingscore.repository.SinhVienRepository;
import vn.com.itqnu.trainingscore.service.SinhVienService;

@Service
public class SinhVienServiceImpl implements SinhVienService {

	@Autowired
	private SinhVienRepository sinhVienRepository;

	public SinhVienServiceImpl(SinhVienRepository sinhVienRepository) {
		this.sinhVienRepository = sinhVienRepository;
	}

	@Override
	public SinhVien login(LoginInfo loginInfo) {
		if (loginInfo.getMaSv() == null || loginInfo.getPassword() == null || loginInfo.getMaSv().trim().length() == 0
				|| loginInfo.getPassword().trim().length() == 0) {
			throw new RuntimeException("Username or Password is required!");
		}
		SinhVien sinhVien = sinhVienRepository.findByMaSv(loginInfo.getMaSv());
		if (sinhVien == null) {
			throw new RuntimeException("Username or Password incorrect!");
		}
		if (!sinhVien.getPassword().equals(loginInfo.getPassword())) {
			throw new RuntimeException("Username or Password incorrect!");
		}
		return sinhVien;
	}

	@Override
	public List<SinhVien> getAllSinhVien() {
		List<SinhVien> listSinhVien = sinhVienRepository.findAll();
		if (listSinhVien == null) {
			throw new RuntimeException("the list is empty");
		}
		return listSinhVien;
	}

	@Override
	public SinhVien createSinhVien(SinhVienModel sinhVienModel) {
		if (sinhVienModel.getMaSv() == null || sinhVienModel.getPassword() == null || sinhVienModel.getMaSv().trim().length() == 0
				|| sinhVienModel.getPassword().trim().length() == 0) {
			throw new RuntimeException("Username or Password is required!");
		}
		SinhVien sinhVien = sinhVienRepository.findByMaSv(sinhVienModel.getMaSv());
		if (sinhVien != null) {
			throw new RuntimeException("Username is already exist!");
		}
		SinhVien sinhVien2 = new SinhVien();
		sinhVien2.setMaSv(sinhVienModel.getMaSv());
		sinhVien2.setMaLop(sinhVienModel.getMaLop());
		sinhVien2.setTen(sinhVienModel.getTen());
		sinhVien2.setPassword(sinhVienModel.getPassword());
		sinhVien2.setEmail(sinhVienModel.getEmail());
		sinhVien2.setSdt(sinhVienModel.getSdt());
		sinhVien2.setQuyen(sinhVienModel.getQuyen());
		sinhVienRepository.save(sinhVien2);
		return sinhVien2;
	}

	@Override
	public SinhVien updateSinhVien(SinhVien sinhVien) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteSinhVien(String maSv) {
		// TODO Auto-generated method stub

	}

}
