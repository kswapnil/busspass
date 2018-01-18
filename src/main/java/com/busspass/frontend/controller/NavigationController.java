package com.busspass.frontend.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigationController {

	@RequestMapping("/")
	public String index(Map<String, Object> model){
		
		return "index";
	}
}
