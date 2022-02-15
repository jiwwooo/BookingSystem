package org.zerock.controller;

import java.io.File;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@RestController
public class AjaxController {

	@PostMapping(value = "uploadAjaxAction", produces = "application/json")
	@ResponseBody
	public void upload(MultipartFile[] uploadFile, Model model) {

		log.info("ready");

		String uploadFolder = "C:\\upload";

		for (MultipartFile multipartFile : uploadFile) {

			log.info("========================");
			log.info("File Name" + multipartFile.getOriginalFilename());
			log.info("File Size" + multipartFile.getSize());

			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			log.info("only file name : " + uploadFileName);

			File saveFile = new File(uploadFolder, uploadFileName);

			try {
				multipartFile.transferTo(saveFile);

			} catch (Exception e) {

				log.error(e.getMessage());
			}

		}

	}
}
