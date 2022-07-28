package com.cubic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cubic.service.SignupService;

/**
 * 
 * @author javahunk
 *
 */
@Controller
public class SignupController {

	@Autowired
	private SignupService signupService;

	// csignup - url-pattern
	@GetMapping("/csignup")
	public String openAuthPage() {
		return "signup";
	}

	@GetMapping("/deleteSignup")
	public String deleteData(@RequestParam int sid, Model model) {
		// code to fetch data from database
		signupService.deleteById(sid);
		return "redirect:/signups";
	}
	
	
	
	
	@PostMapping("/updateImage")
	public String updateImagePost(@RequestParam int sid,@RequestParam String newimage) {
		signupService.updateImage(sid , newimage );
		//show all the records
		return "redirect:/signups";
	}
	
	@GetMapping("/editImage")
	public String editProfileImage(@RequestParam int sid,Model model) {
		SignupDTO signupDTO = signupService.findById(sid);
		// adding data inside request scope
		model.addAttribute("signup", signupDTO);
		return "eimsignup"; // this view name for JSP
	}

	@GetMapping({ "/signups", "/" })
	public String showAllData(Model model) {
		List<SignupDTO> signups = signupService.findAll();
		// adding data inside request scope
		model.addAttribute("alainData", signups);
		return "signups"; // this view name for JSP
	}

	@PostMapping("/csignup")
	public String postSignup(@ModelAttribute SignupDTO signup, Model model) {
		signupService.save(signup);
		return "redirect:/signups";
	}

}
