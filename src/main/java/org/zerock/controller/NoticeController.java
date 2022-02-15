package org.zerock.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.dto.NoticeDTO;
import org.zerock.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class NoticeController {
	
	
private NoticeService service;
	
	
	@GetMapping("/noticeList")
	public void noticeList(Model model, HttpServletRequest req) {
		HttpSession session;
		session = req.getSession();
		String message = (String) session.getAttribute("message");
		
		log.info("list");
		log.info("message");
		model.addAttribute("list", service.getNoticeList());
		model.addAttribute("message" , message);
		
		
		
	}
	
	
	@GetMapping("/noticeInsert")
	public void noticeInsert() {
		
		
	}
	

	@PostMapping("/noticeInsert")
	public String noticeInsert(NoticeDTO notice,RedirectAttributes rttr) {
		log.info(notice);
		service.insertNotice(notice);
		rttr.addFlashAttribute("result", notice.getNo());
		return "redirect:/noticeList";
		
	}
	
	
	 @PostMapping("/noticeModify") 
	 public String noticeModify(NoticeDTO notice,RedirectAttributes rttr) { 
	  log.info(notice);
	  service.updateNotice(notice); 
	  rttr.addFlashAttribute("result", notice.getNo()); 
	  
	  return "redirect:/noticeList";
	 
	 }
	 
	 @GetMapping("/noticeModify") 
	 public void notifyModify(@RequestParam int no, Model model) {
		 NoticeDTO notice = service.getNotice(no);
		 model.addAttribute("notice", notice);
	 }
	  
	
	

	@GetMapping("/noticeView")
	public void noticeView(@RequestParam("no") int no, Model model)  {
		log.info("success!");
		model.addAttribute("notice",service.getNotice(no));
		log.info(model);
	}
	
	@GetMapping("/noticeRemove")
	public String noticeView(@RequestParam("no") int no) {
		
		service.deleteNotice(no);
		return "redirect:/noticeList";
	}
	
	
}
