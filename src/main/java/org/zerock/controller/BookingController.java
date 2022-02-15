package org.zerock.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.multipart;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.dto.BookingDTO;
import org.zerock.dto.RoomInfoDTO;
import org.zerock.service.BookingService;
import org.zerock.service.RoomInfoService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor


@Controller
public class BookingController {
	
	
	private RoomInfoService ser;
	
	
	private BookingService service;
	
	

	@GetMapping("/roomInfoList6")
	public void roomInfo6(Model model) {
		RoomInfoDTO room1 = ser.getRoomInfo(95);
		RoomInfoDTO room2= ser.getRoomInfo(97);
		RoomInfoDTO room3 = ser.getRoomInfo(98);
		RoomInfoDTO room4 = ser.getRoomInfo(99);
		RoomInfoDTO room5 = ser.getRoomInfo(100);
		model.addAttribute("room1", room1);
		model.addAttribute("room2", room2);
		model.addAttribute("room3", room3);
		model.addAttribute("room4", room4);
		model.addAttribute("room5", room5);
	}

	

	@GetMapping("/roomInfoList1")
	public void roomInfoList(Model model) {
		RoomInfoDTO room1 = ser.getRoomInfo(95);
		RoomInfoDTO room2= ser.getRoomInfo(97);
		RoomInfoDTO room3 = ser.getRoomInfo(98);
		RoomInfoDTO room4 = ser.getRoomInfo(99);
		RoomInfoDTO room5 = ser.getRoomInfo(100);
		model.addAttribute("room1", room1);
		model.addAttribute("room2", room2);
		model.addAttribute("room3", room3);
		model.addAttribute("room4", room4);
		model.addAttribute("room5", room5);
		
	}
	
	@GetMapping("/roomInfoList2")
	public void roomInfoList2(Model model) {
		RoomInfoDTO room1 = ser.getRoomInfo(95);
		RoomInfoDTO room2= ser.getRoomInfo(97);
		RoomInfoDTO room3 = ser.getRoomInfo(98);
		RoomInfoDTO room4 = ser.getRoomInfo(99);
		RoomInfoDTO room5 = ser.getRoomInfo(100);
		model.addAttribute("room1", room1);
		model.addAttribute("room2", room2);
		model.addAttribute("room3", room3);
		model.addAttribute("room4", room4);
		model.addAttribute("room5", room5);
		
	}

	
	@GetMapping("/roomInfoList3")
	public void roomInfoList3(Model model) {
		RoomInfoDTO room1 = ser.getRoomInfo(95);
		RoomInfoDTO room2= ser.getRoomInfo(97);
		RoomInfoDTO room3 = ser.getRoomInfo(98);
		RoomInfoDTO room4 = ser.getRoomInfo(99);
		RoomInfoDTO room5 = ser.getRoomInfo(100);
		model.addAttribute("room1", room1);
		model.addAttribute("room2", room2);
		model.addAttribute("room3", room3);
		model.addAttribute("room4", room4);
		model.addAttribute("room5", room5);
		
		
	}
	
	@GetMapping("/roomInfoList4")
	public void roomInfoList4(Model model) {
		
		RoomInfoDTO room1 = ser.getRoomInfo(95);
		RoomInfoDTO room2= ser.getRoomInfo(97);
		RoomInfoDTO room3 = ser.getRoomInfo(98);
		RoomInfoDTO room4 = ser.getRoomInfo(99);
		RoomInfoDTO room5 = ser.getRoomInfo(100);
		model.addAttribute("room1", room1);
		model.addAttribute("room2", room2);
		model.addAttribute("room3", room3);
		model.addAttribute("room4", room4);
		model.addAttribute("room5", room5);
		
		
	}
	
	@GetMapping("/roomInfoList5")
	public void roomInfoList5(Model model , HttpServletRequest req) {
		RoomInfoDTO room1 = ser.getRoomInfo(95);
		RoomInfoDTO room2= ser.getRoomInfo(97);
		RoomInfoDTO room3 = ser.getRoomInfo(98);
		RoomInfoDTO room4 = ser.getRoomInfo(99);
		RoomInfoDTO room5 = ser.getRoomInfo(100);
		model.addAttribute("room1", room1);
		model.addAttribute("room2", room2);
		model.addAttribute("room3", room3);
		model.addAttribute("room4", room4);
		model.addAttribute("room5", room5);
	}
	
	

	@GetMapping("/bookingList")
	public void getBookingList(HttpServletRequest req , Model model) {
		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("name");
		log.info(name);
		List<BookingDTO> booking = (List<BookingDTO>) service.selectBooking(name);
		log.info(booking);
		 model.addAttribute("booking", service.selectBooking(name)); 
		int cart = booking.size();
		session.setAttribute("cart", cart);
		
		/*
		 * RoomInfoDTO room = ser.getRoomInfo(booking.getRoom_no()); log.info(room);
		 * model.addAttribute("room",room);
		 */
		

	
		
		
		
		
	}
	
	@PostMapping("/insertBooking")
	public String insertBookingProcess(BookingDTO booking, HttpServletRequest req , Model model){
		/*
		 * log.info(booking); log.info(booking.getAdult());
		 * log.info(booking.getChild()); log.info(booking.getBank_account_number());
		 * log.info(booking.getBank_branch_code()); log.info(booking.getRoom_no());
		 */
		String year = booking.getStart_date().substring(0,4);
		String month = booking.getStart_date().substring(5,7);
		String day = booking.getStart_date().substring(8,10);
		
		String year2 = booking.getEnd_date().substring(0,4);
		String month2 = booking.getEnd_date().substring(5,7);
		String day2= booking.getEnd_date().substring(8,10);
		
		String start_date = year+month+day;
		String end_date = year2+month2+day2;

		HttpSession session = req.getSession();
		 String name = (String)session.getAttribute("name"); 
		 String phone = (String)session.getAttribute("phone"); 
		 
		 booking.setName(name);
		 booking.setPhone(phone);
		 booking.setStart_date(start_date);
		 booking.setEnd_date(end_date);
		
		
		 service.insertBooking(booking);
			 return "redirect:/bookingList"; 
		
	}
	
	
	@GetMapping("/insertBookingProcess")
	public void insertProcess() {
		
	}
	
	@GetMapping("/modal")
	public void modal() {

	}

	@GetMapping("/uploadFile")
	public void fileUpload() {

	}

	@PostMapping("uploadProcess")
	public void upload(MultipartFile[] uploadFile, Model model) {

		log.info(uploadFile);
		
		 String uploadFolder = "c:\\upload";

		for(MultipartFile multipartFile : uploadFile) {
			
		  log.info("=========================================");
		  log.info("Upload File Name : " + multipartFile.getOriginalFilename());
		  log.info("Upload File Size : " + multipartFile.getSize());
		  
		  model.addAttribute("filename", multipartFile.getOriginalFilename());
		  
		  File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename() );
		  
		  try { multipartFile.transferTo(saveFile);
		  
		 }catch(Exception e) { log.error(e.getMessage()); }
		 
		}

	

	}
	
	
	
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		
		
	}
	
	
	public void uploadAjaxPost(MultipartFile[] uploadFile) {
		
		log.info("ready");
		
		String uploadFolder = "C:\\upload";
		
		for(MultipartFile multipartFile : uploadFile) {
			
			log.info("========================");
			log.info("File Name" + multipartFile.getOriginalFilename());
			log.info("File Size" + multipartFile.getSize());
			
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			log.info("only file name : " + uploadFileName);
			
			File saveFile = new File(uploadFolder , uploadFileName);
			
			try {
				multipartFile.transferTo(saveFile);
				
			}catch (Exception e) {

			log.error(e.getMessage());
			}
			
		}
	}
	
	
	@GetMapping("/uploadProcess")
	public void uploadProcess() {

	}

}
