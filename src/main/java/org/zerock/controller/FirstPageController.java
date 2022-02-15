package org.zerock.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.dto.ConsultationDTO;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */

@Log4j


@Controller
@RequestMapping("")
public class FirstPageController {

	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@GetMapping("")
	public String frontPage() {
		return "frontPage";
	}
	
	@GetMapping("/firstPage")
	public void firstPage(Locale locale, Model model) {

	}
	

	
	@PostMapping("/login")
	public String login(String id, String pwd, String phone, HttpServletRequest request) {
		log.info(id);
		log.info(pwd);
		
		HttpSession session;
		session = request.getSession();
		ConsultationDTO consult= new ConsultationDTO();
		consult.setName(id);
		consult.setPasswd(pwd);
		
		session.setMaxInactiveInterval(24 * 60 * 60);
		String message  = id + "接続完了" ;
		session.setAttribute("name", id);
		session.setAttribute("pwd", pwd);
		session.setAttribute("phone", phone);
		session.setAttribute("cart", "0");
		request.setAttribute("message", message);
			
		return "redirect:/roomInfoList1"; 
	}
	
	@GetMapping("/logout")
	public void logout() {
		
		
	}
	
	
	@PostMapping("/logout")
	public String logout (HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		
		return "redirect:/ ";
	}
	
}
