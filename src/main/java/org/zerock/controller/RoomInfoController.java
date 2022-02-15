package org.zerock.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.dto.OptionsDTO;
import org.zerock.dto.RoomInfoDTO;
import org.zerock.service.OptionService;
import org.zerock.service.RoomInfoService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
public class RoomInfoController {

	private RoomInfoService service;
	private OptionService oService;
	
	
	
	public void roomPhotoProcess(@RequestParam int no) {
		RoomInfoDTO room = service.getRoomInfo(no);
		String photoList = room.getImages();
		
        String[] photos = photoList.split("\\,");
        for (String photo : photos)

               System.out.println(photo);
		
		
	}

	@GetMapping("/order")
	public void order(@RequestParam int no, HttpServletRequest req, Model model) {
		log.info(no);

		HttpSession session = req.getSession();
		RoomInfoDTO room = service.getRoomInfo(no);
		model.addAttribute("room", room);
		List<OptionsDTO> list = oService.getOptList();
		model.addAttribute("optionList", list);

	}

	@GetMapping("/roomInfoUpdate")
	public void roomUpdate(@RequestParam int no, Model model) {
		RoomInfoDTO room = service.getRoomInfo(no);
		model.addAttribute("room", room);
	}
	
	@GetMapping("/roomUpdate")
	public void updateResult() {
		
		
	}

	@PostMapping("roomUpdateProcess")
	public String roomUpdating(RoomInfoDTO room, Model model, HttpServletRequest req) {
		log.info("hello update");
		log.info(room);

		service.updateRoom(room);

		RoomInfoDTO result = service.getRoomInfo(room.getNo());
		log.info(result);
		model.addAttribute("room", result);
		req.setAttribute("no", room.getNo());
		return "redirect:/roomInfoList1";
				
	}

	@GetMapping("/roomInfoView")
	public void roomView(HttpServletRequest req) {

	}

	@GetMapping("/roomPhotoUpdate")
	public void updatePhotos(@RequestParam("no") int no, Model model) {
		model.addAttribute("no", no);
		
				
				
	}

	@PostMapping("/roomPhotoUpdate")
	public String updatePhoto(MultipartFile[] uploadFile, @RequestParam("no") int no,Model model) {
		ArrayList<String> fileList = new ArrayList<String>();
		for (MultipartFile multipartFile : uploadFile) {
			String uploadFolder = "C:\\upload";
			

			log.info("========================");
			log.info("File Name" + multipartFile.getOriginalFilename());

			
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			fileList.add(uploadFileName);
			log.info("only file name : " + uploadFileName);
			File saveFile = new File(uploadFolder, uploadFileName);
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		String images = String.join(",", fileList);
		log.info(images);
		RoomInfoDTO room = new RoomInfoDTO();
		room.setNo(no);
		room.setImages(images);
		service.updateRoom(room);
		String[] photos = service.roomPhotoProcess(no);
		return "redirect:/roomInfoList6";
		
	}

}
