package com.busspass.frontend.controller;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NavigationController {

	@RequestMapping("/")
	public String index(Map<String, Object> model){
		return "index";
	}
	@RequestMapping("/register")
	public String NavigateToregisterPage(){
		return "register";
	}
	@RequestMapping("/forgotpasswordpage")
	public ModelAndView NavigateToforgotPasswordPage(){
		return new ModelAndView("forgetpassword","error","Enter your recovery email");
	}
	@RequestMapping("/makepayment")
	public ModelAndView navigateTomakepaymentPage(){
		return new ModelAndView("makepayment");
	}
	@RequestMapping("/locatebus")
	public ModelAndView navigateToLocateBusPage(){
		return new ModelAndView("locatebus","error","Aurangabad");
	}
	
	
}
