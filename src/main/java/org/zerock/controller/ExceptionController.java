package org.zerock.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {
	
	@ExceptionHandler(Exception.class)
	public String toLoginPage(Model model) {
		model.addAttribute("message","error");
		return "roomInfoList1";
	}
	
	

}
