package org.zerock.controller;

import org.postgresql.shaded.com.ongres.scram.common.bouncycastle.pbkdf2.SHA256Digest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.process.Sha256;
import org.zerock.service.SliderImages;
import org.zerock.service.SliderImagesImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@AllArgsConstructor
@Controller
public class SliderImagesController {
	
	private SliderImages service;
	
	@GetMapping("/addImages")
	public void addImages() {
		
		
	}
	
	
	@PostMapping("/addProcess")
	public void addProcess(MultipartFile uploadFile) {
		
		String file_name0 = uploadFile.getOriginalFilename();
		String file_name = Sha256.testSHA256(file_name0);
		service.insertImages(file_name);
		
	}
			

}
