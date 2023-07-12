package com.demo.in.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {

	
	@GetMapping
	public ModelAndView getWelcomePage() {
		ModelAndView mav=new ModelAndView("welcome");
		return mav;
	}
	
}
