package vn.com.itqnu.trainingscore.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vn.com.itqnu.trainingscore.entity.SinhVien;
import vn.com.itqnu.trainingscore.model.LoginInfo;
import vn.com.itqnu.trainingscore.model.SinhVienModel;
import vn.com.itqnu.trainingscore.service.SinhVienService;
import vn.com.itqnu.trainingscore.utils.ResponseUtil;
import org.springframework.web.bind.annotation.RequestMapping;


@RestController

@RequestMapping("api/v1/sinhviens")
public class SinhVienController {
	
	
	 
	
	@Autowired
	private SinhVienService sinhVienService;

	public SinhVienController(SinhVienService sinhVienService) {
		this.sinhVienService = sinhVienService;
	}
	
	
	

	@PostMapping("/login")
	public ResponseEntity<?> login(@RequestBody LoginInfo loginInfo, HttpStatus status) {
		try {
			return ResponseUtil.getSuccess(sinhVienService.login(loginInfo));
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseUtil.getError(status.BAD_REQUEST, "Get error", e.getMessage());
		}
	}
	
	@GetMapping
	public ResponseEntity<?> getAllSinhVien(HttpStatus status) {
		try {
			return ResponseUtil.getSuccess(sinhVienService.getAllSinhVien());
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseUtil.getError(status.BAD_REQUEST, "Get error", e.getMessage());
		}
	}
	
	@PostMapping("/addSinhVien")
	public ResponseEntity<?> login(@RequestBody SinhVienModel sinhVienModel, HttpStatus status) {
		try {
			return ResponseUtil.getSuccess(sinhVienService.createSinhVien(sinhVienModel));
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseUtil.getError(status.BAD_REQUEST, "Get error", e.getMessage());
		}
	}
	
	
    }
	



