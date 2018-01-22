package com.busspass.frontend.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.busspass.frontend.service.ILoginService;

@Controller
public class NavigationController {

	@Autowired
	ILoginService loginService;
	
	@RequestMapping("/")
	public String index(Map<String, Object> model){
		return "index";
	}
	@RequestMapping("/register")
	public String registerPage(){
		return "register";
	}
	@RequestMapping("/registerTodb")
	public ModelAndView registerUserTodb(){
		return new ModelAndView("index","error", "User Successfully Registered..");
	}
	@RequestMapping("/login")
	public ModelAndView logIntoApplication(@RequestParam("email")String email,@RequestParam("password")String password){
		if(email.equalsIgnoreCase("admin@email.com") && password.equalsIgnoreCase("admin123"))  
		return new ModelAndView("adminpannel");
		else if(loginService.validateUser(email, password)) 
			//Verify the email and password
			return new ModelAndView("userpannel");
		else
			return new ModelAndView("index","error","Invalid Credentials");
	}
	

	@RequestMapping("/forgotpasswordpage")
	public ModelAndView gotoforgotPasswordPage(){
		return new ModelAndView("forgetpassword","error","Enter your recovery email");
	}
	@RequestMapping("/fromforgotpassword")
	public ModelAndView fromforgotPassword(@RequestParam("email") String email){
		//submit the emial to service for sending the password to mail
		return new ModelAndView("index","error","Check your mail for password");
	}
	
}
