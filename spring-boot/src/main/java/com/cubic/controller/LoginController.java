package com.cubic.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cubic.service.SignupService;

@Controller
public class LoginController {
	

	@Autowired
	private SignupService signupService;
	
	@GetMapping("/auth")
	public String openAuthPage() {
		return "login";
	}
	
	@PostMapping("/auth")
	public String authPost(@RequestParam String username , @RequestParam String password ,Model model) {
		SignupDTO signup=signupService.findByUsernameAndPassword(username, password);
		if(signup!=null) {
			return "redirect:/signups";
		}
		model.addAttribute("message","Hmmmm sorry! your username and password are incorerct");
		return "login";
	}
	
	
}
