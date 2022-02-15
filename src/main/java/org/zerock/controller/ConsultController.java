package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.dto.ConsultationDTO;
import org.zerock.service.ConsultService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class ConsultController {

	private ConsultService service;

	@GetMapping("/consultList")
	public void consultList(Model model) {
		model.addAttribute("list", service.getConsultList());
	}

	@GetMapping("/consultView")
	public void consultView(@RequestParam("no") int no, Model model) {

		model.addAttribute("consult", service.getConsult(no));
	}

	@GetMapping("/consultInsert")
	public void consultInsert() {

	}

	@PostMapping("/consultInsert")
	public String consult(ConsultationDTO consult, RedirectAttributes rttr, HttpServletRequest req) {
		HttpSession session;
		session = req.getSession();
		String name = (String) session.getAttribute("name");
		String passwd = (String) session.getAttribute("pwd");
		consult.setName(name);
		consult.setPasswd(passwd);
		log.info(consult.getContents());
		log.info(consult.getTitle());

		log.info(consult);
		service.regConsult(consult);
		rttr.addFlashAttribute("consult", consult.getNo());
		return "redirect:/consultList"; 
	}

	/*
	 * @GetMapping("/consultRewrite") public void consultRewrite(@RequestParam("no")
	 * int no, HttpServletRequest req) { ConsultationDTO consult =
	 * service.getConsult(no); req.setAttribute("no",consult.getNo() ); R }
	 * 
	 * 
	 * 
	 * @PostMapping("/consultRewrite") public String consultRewri(ConsultationDTO
	 * consult) {
	 * 
	 * 
	 * return "redirect:/consultList"; }
	 */
}
