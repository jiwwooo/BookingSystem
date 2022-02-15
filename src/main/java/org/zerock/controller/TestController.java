package org.zerock.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@GetMapping("/modalTest")
	public void test(Locale locale, Model model) {
		
	}
	
}
