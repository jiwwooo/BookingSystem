package org.zerock.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.zerock.dto.OptionsDTO;
import org.zerock.service.OptionService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class OptionController {

	
	private OptionService service;
	
	
	@GetMapping("insertOpt")
	public void insertOpt(int no){
log.info(no);	
log.info(service.getOption(no));
	}
	
	@GetMapping("/regOption")
	public void registerOpt() {
		
	}
	
	@PostMapping("/regOption")
	public String regOption(OptionsDTO options, Model model) {
		
		
		service.regOption(options);
		
		log.info("success");
		  
		  return "redirect:/optionList";
	}
	
	
	@GetMapping("/optionList")
	public void optionList(Model model) {
		
		List<OptionsDTO> list  =  service.getOptList();
		
		
		model.addAttribute("list", list);
		
		
		
		
	}
	
}
