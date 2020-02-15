package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showForm() {
		
		return "helloworld-form";
	}

	@RequestMapping("/processForm")
	public String processForm(@RequestParam("studentName") String name, Model model) {
		
		name = name.toUpperCase();
		
		model.addAttribute("message", name);
		return "welcomePage";
	}
}
