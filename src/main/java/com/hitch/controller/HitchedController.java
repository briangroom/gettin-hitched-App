package com.hitch.controller;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hitch.entity.Student;
import com.hitch.entity.UserLogin;
import com.hitch.repository.HitchedRepository;
import com.hitch.service.HitchedService;


@Controller
@SessionAttributes("emailAddress")
public class HitchedController {
	 
	@Autowired
	private HitchedService hitchedService;
	 

	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("message", "This is the welcome Page");
		return "index";
	}
	
	@RequestMapping("signupMember")
	public String signupMember(@ModelAttribute("signupMember") UserLogin userLogin, BindingResult bindingResult,
			ModelMap model) throws ParseException {
		String msg = "Welcome to Gettin' Hitched Login now <a href='http://localhost:8080/wellness/login'>Login </a>";
		try {
			if (hitchedService.findUser(userLogin.getEmailAddress()) == false) {
				if (userLogin.getPassword().equals(userLogin.getPasswordConfirm())) {
					hitchedService.createUser(userLogin);
					model.addAttribute("message",
							"Welcome " + userLogin.getFname() + " Login now <a href='login'>Login </a>");

					try {
						//sendMail.sendMails(userLogin.getEmailAddress(), "Welcome to wellness ", msg);
						model.addAttribute("success",
								"Confirmation email has been sent to " + userLogin.getEmailAddress() + " thanks");

					} catch (Exception e) {
						model.addAttribute("error",
								"Error sending confirmation email to " + userLogin.getEmailAddress());
					}

					return "login";
				} else {
					model.addAttribute("error", "Password not matching ");
				}

			} else {
				model.addAttribute("error", "A user exists with the supplied email " + userLogin.getEmailAddress()
						+ " <a href='forgotpassword'> Forgot Password click here </a>");

			}

		} catch (RuntimeException e) {
			model.addAttribute("error", "Unexpected error occured");
			//logger.error("Sorry, Unexpected error occured!", e);
			e.printStackTrace();

		}

		return "signups";

	}

	@RequestMapping("signup")
	public String signup(@ModelAttribute("signup") UserLogin userLogin, BindingResult bindingResult, ModelMap model)
			throws ParseException {
		String msg = "Welcome to Gettin' Hitched Login now <a href='http://localhost:8080/wellness/login'>Login </a>";

		model.addAttribute("message", "Hello " + userLogin.getFname() + " Login now <a href='login'>Login </a>");

		return "login";

	}

/* @RequestMapping(value="/submitStudentDetails", method= RequestMethod.POST)
 private String submitStudent(Model model, @ModelAttribute("student") Student student){
	this.hitchedService.addStudent(student);
	model.addAttribute("welcome", "Welcome Student");
	 return "home";
 }
 
 @RequestMapping(value="/findStudentById", 
		 method= RequestMethod.GET
		 )
 @ResponseBody
 private ResponseEntity<Student> findStudent( String email){
	Student student = this.hitchedService.findStudent(email);
	return new ResponseEntity<>(student,HttpStatus.OK);
 }*/
 
	/*@Override
	public long createUser(UserLogin userLogin) {
		return wellnessDao.createUser(userLogin);
	}

	@Override
	public UserLogin updateUser(UserLogin userLogin) {
		return wellnessDao.updateUser(userLogin);
	}*/
 

}