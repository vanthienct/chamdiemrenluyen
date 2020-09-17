package vn.com.itqnu.trainingscore.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import vn.com.itqnu.trainingscore.entity.SinhVien;

@Repository
public interface SinhVienRepository extends JpaRepository<SinhVien, String>{
	
	SinhVien findByMaSv(String maSv);
	
	
}
