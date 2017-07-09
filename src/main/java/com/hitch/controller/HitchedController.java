package com.hitch.controller;

import java.text.ParseException;
import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hitch.entity.UserLogin;
import com.hitch.hitchUtils.States;
import com.hitch.hitchUtils.States.Days;
import com.hitch.repository.HitchedRepository;
import com.hitch.service.HitchedService;
//import com.hitch.service.MailService;

@Controller
@SessionAttributes("emailAddress")
public class HitchedController {
	 
	final static Logger logger = Logger.getLogger(HitchedController.class);
	
	@Autowired
	private HitchedService hitchedService;
	 
	/*@Autowired
	private MailService mailServices;*/


	
	/*@RequestMapping(value = "/services", method = RequestMethod.GET)
	public String service(Model model) {
		model.addAttribute("message", "Welcome to wellness club ");

		return "services";
	}*/


	@RequestMapping("/")
	public String welcome(Model model) {
		logger.info("#######################Welcome : ");
		model.addAttribute("message", "This is the welcome Page");
		return "index";
	}

    /*SendMail sendMail =new SendMail();*/

	@RequestMapping(value = "/signups", method = RequestMethod.GET)
	public String signups(Model model) {
		System.out.println("in signups");

		model.addAttribute("signupMember", new UserLogin());
		logger.info("#######################signups out : ");

		return "signups";
	}

	
	/*@RequestMapping("/signupMember")
	public String signupMember(@ModelAttribute("signupMember") UserLogin userLogin, BindingResult bindingResult,
			ModelMap model) throws ParseException {
		//String msg = "Welcome to wellness Login now <a href='http://localhost:8080/wellness/login'>Login </a>";
		System.out.println("in signupMember");
		logger.info("#######################signupMember : ");
		try {
			if (hitchedService.findUser(userLogin.getEmailAddress()) == false) {
				if (userLogin.getPassword().equals(userLogin.getPasswordConfirm())) {
					hitchedService.createUser(userLogin);
					model.addAttribute("message",
							"Welcome " + userLogin.getFname() + " Login now <a href='login'>Login </a>");

					try {
						sendMail.sendMails(userLogin.getEmailAddress(), "Welcome to wellness ", msg);
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
			model.addAttribute("error", "Unexpected error occured"+e);
			logger.error("Sorry, Unexpected error occured!", e);
			e.printStackTrace();

		}

		return "signups";

	}*/

	@RequestMapping("/signup")
	public String signup(@ModelAttribute("signup") UserLogin userLogin, BindingResult bindingResult, ModelMap model)
			throws ParseException {
		System.out.println("in signup");
		logger.info("#######################signup : ");

		try {
			logger.info("Id being passed is = " + userLogin.getEmailAddress());
			if (hitchedService.findUser(userLogin.getEmailAddress()) == false) {
				logger.info("This is a new user ");

				if (userLogin.getPassword().equals(userLogin.getPasswordConfirm())) {
					hitchedService.createUser(userLogin);
					model.addAttribute("message",
							"Welcome " + userLogin.getFname() + " Login now <a href='login'>Login </a>");

					try {
						/*sendMail.sendMails(userLogin.getEmailAddress(), "Welcome to wellness ", msg);*/
						model.addAttribute("success",
								"Confirmation email has been sent to " + userLogin.getEmailAddress() + " thanks");

					} catch (Exception e) {
						model.addAttribute("error",
								"Error sending confirmation email to " + userLogin.getEmailAddress());
					}

					return "login";
				} else {
					logger.info("This is an existing user ");

					model.addAttribute("error", "Password not matching ");
				}

			} else {
				model.addAttribute("error", "A user exists with the supplied email " + userLogin.getEmailAddress()
						+ " <a href='forgotpassword'> Forgot Password click here </a>");

			}

		} catch (RuntimeException e) {
			model.addAttribute("error", "Unexpected error occured"+ e);
			logger.error("Sorry, Unexpected error occured!", e);
			e.printStackTrace();

		}

		return "signups";

	}



	@RequestMapping("/about")
    public String about(Model model) {
    	
		model.addAttribute("message", "This is the Gettin Hitched About Us Page");
    	/*model.addAttribute("addresses", locationService.getAllAddresses());*/
    	
        return "about";
    }
    
    
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contact(Model model) {
    	model.addAttribute("sendEmail", new UserLogin());
    	model.addAttribute("message", "Welcome to Gettin Hitched, please drop us an email"); 
    	
        return "contact";
    }
    
	@ModelAttribute("states")
	public List<States> populateStates() {
		return Arrays.asList(States.values());
	}

	@ModelAttribute("days")
	public Days[] day() {
		return Days.values();
	}
	

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model) {
		logger.info("someone logg in out : ");
		if (logger.isDebugEnabled()) {
			logger.debug("logout out : ");
		}

		model.addAttribute("msg", "You have been logged out!");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {

		System.out.println("in login");
		logger.info("called  log in : ");

		if (logger.isDebugEnabled()) {
			logger.debug("This is debug : ");
		}

		logger.debug("someone logg in out : ");

		model.addAttribute("loginMember", new UserLogin());
		model.addAttribute("msg", "Login to explore the complete features!");
		return "login";
	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.GET)
	public String loginuser(Model model) {

		model.addAttribute("newlogin", new UserLogin());
		model.addAttribute("msg", "New login for test!");
		return "loginUser";
	}

	// @RequestMapping(value = "/newlogin", method = RequestMethod.POST)
		// since 'POST' is in the jsp, I don't need it here
	@RequestMapping("/newlogin")
	public String newlogin(@ModelAttribute("newlogin") UserLogin user, ModelMap model) throws ParseException {

		logger.info("user logged in : " + user.getEmailAddress());

		try {

			UserLogin userdetail = hitchedService.getUserByEmailId(user.getEmailAddress());

			if (validateLogin(user.getEmailAddress(), user.getPassword())) {
				model.addAttribute("success", "Welcome " + userdetail.getFname());
				model.addAttribute("attribs", userdetail);
				model.addAttribute("user", userdetail.getFname());

				return "profile";

			} else {
				model.addAttribute("error", "Invalid credentials try again ");
			}
		} 
		 catch (EmptyResultDataAccessException e) {
			model.addAttribute("error",
					"User " + user.getEmailAddress() + " does not exists <a href='signups'>Sign up </a>");
		}  
		catch (RuntimeException e) {
			model.addAttribute("error", "Unexpected error occured");
			e.printStackTrace();

		}

		return "login";
	}


	@RequestMapping(value = "/loginMember", method = RequestMethod.POST)
	public String login(@ModelAttribute("loginMember") UserLogin user, ModelMap model) throws ParseException {

		logger.info("user logged in : " + user.getEmailAddress());

		System.out.println("**** in loginMember*****");
		try {
			logger.info("This is info : " + user.getEmailAddress());
			UserLogin userdetail = hitchedService.getUserByEmailId(user.getEmailAddress());
			if (hitchedService.findUser(user.getEmailAddress()) == true) {
				if (userdetail.getEmailAddress().equals(user.getEmailAddress())
						&& userdetail.getPassword().equals(user.getPassword())) {
					{
						model.addAttribute("success", "Welcome " + userdetail.getFname() + ". This is a secure zone! ");
						model.addAttribute("attribs", userdetail);
						model.addAttribute("user", userdetail.getFname());

						return "profile";
					}
				} else {
					model.addAttribute("error", "Invalid credentials try again ");
				}
			}
		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("error",
					"User " + user.getEmailAddress() + " does not exists <a href='signups'>Sign up </a>");
		} catch (RuntimeException e) {
			model.addAttribute("error", "Unexpected error occured");
			e.printStackTrace();

		}

		return "login";
	}


	public boolean validateLogin(String uname, String pswd) {
		UserLogin dbCredentials = hitchedService.getUserByEmailId(uname);
		if (!(uname.equals(dbCredentials.getEmailAddress()) && pswd.equals(dbCredentials.getPassword()))) {
			return false;
		} else
			return true;
	}

	
	/*@RequestMapping(value = "/testpost", method = RequestMethod.POST)
	public String test(@ModelAttribute("testpost") UserLogin user, ModelMap model) throws ParseException {

		model.addAttribute("msg2", "Post Success! You entered email: " +user.getEmailAddress()+ " and first name is " + user.getFname());
		model.addAttribute("addresses", locationService.getAllAddresses());

		return "testpage";
	}*/	

	/*@RequestMapping("/saveUser")
	public String adminEdit(@ModelAttribute("saveUser") UserLogin userLogin, @RequestParam long loggedin,
			BindingResult bindingResult, ModelMap model) throws ParseException {
		try {
			hitchedService.updateUserByEmail(userLogin, userLogin.getEmailAddress());
			model.addAttribute("message", "User " + userLogin.getFname() + " " + userLogin.getLname() + " Updated");
			model.addAttribute("users", hitchedService.getAllusers());

			model.addAttribute("user", hitchedService.getUserByEmail(loggedin).getLname());
			model.addAttribute("id", loggedin);
			model.addAttribute("role", hitchedService.getUserByEmail(loggedin).getRoles());
			return "admin";
		} catch (RuntimeException e) {
			model.addAttribute("error", "Unexpected error occured");
			e.printStackTrace();

		}
		return "dataEdit";
	}*/

	/*@RequestMapping("/admin")
	public String admin(@RequestParam long id, @ModelAttribute UserLogin user, Model model) {

		try {
			UserLogin userdetail = hitchedService.getUserByEmailId(user.getEmailAddress());

			model.addAttribute("users", hitchedService.getAllusers());
			model.addAttribute("user", userdetail.getLname());
			model.addAttribute("id", id);

		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("error", " Access denied ");
			return "login";
		} catch (Exception e) {
			model.addAttribute("user", user.getLname());
			model.addAttribute("id", id);
			model.addAttribute("error", " Access denied ");
			e.printStackTrace();
			return "login";
		}

		return "admin";
	}*/

	
    /*@RequestMapping(value="/signups", method= RequestMethod.POST)
    private String submitUserLogin(Model model, @ModelAttribute("userLogin") UserLogin userLogin){
   	this.hitchedService.createUser(userLogin);
   	model.addAttribute("welcome", "Welcome Student");
   	 return "login";
    } */   
	
	/*@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model) {
		logger.info("someone logged in out : ");
		if (logger.isDebugEnabled()) {
			logger.debug("logout out : ");
		}

		model.addAttribute("msg", "You have been logged out!");
		return "login";
	}*/

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
	       model.addAttribute("error", "A user exists with the supplied email "+userLogin.getEmailAddress()+" <a href='forgotpassword'> Forgot Password click here </a>"); 
		return HitchedService.createUser(userLogin);
	}

	@Override
	public UserLogin updateUser(UserLogin userLogin) {
		return wellnessDao.updateUser(userLogin);
	}*/
 

}