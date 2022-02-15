package org.zerock.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */

@Log4j
@RestController
public class LoginController {
	

	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	

	
	  @RequestMapping("/checkId") 
	  public String method01() {
		  
		  log.info("checkID");
	  
	  return "success!"; }
	 
}
