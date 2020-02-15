package com.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
//	@InitBinder
//	public void initBinder(WebDataBinder dBinder) {
//		StringTrimmerEditor ste = new StringTrimmerEditor(true);
//		dBinder.registerCustomEditor(String.class, ste);
//	}
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		model.addAttribute("customer", new Customer());
		return "customer-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("customer") Customer customer, BindingResult bdResult) {
		System.out.println(bdResult);
		System.out.println("|"+customer.getLastName()+"|");
		if(bdResult.hasErrors()) return "customer-form";
		
		else return "customer-confirmation";
	}

}
