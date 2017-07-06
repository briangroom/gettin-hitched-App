package com.hitch.controller;

import java.text.ParseException;
import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hitch.entity.UserLogin;
import com.hitch.hitchUtils.HitchUtils;
import com.hitch.hitchUtils.States;
import com.hitch.hitchUtils.States.Days;
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

    /*SendMail sendMail =new SendMail();*/
    HitchUtils hitchUtils=new HitchUtils();
    
    @RequestMapping(value = "/jdbcCrudes", method = RequestMethod.GET)
    public String services(Model model) {
         /*model.addAttribute("attribs", hitchedService.jdbcDbConnect("bdgroom@att.net"));*/
              
        return "jdbcCrudes";
    }
    
	@RequestMapping(value = "/signups", method = RequestMethod.GET)
	public String signups(Model model) {
		model.addAttribute("signupMember", new UserLogin());
		/*logger.info("#######################signup out : ");*/

		return "signups";
	}

	
	@RequestMapping("signupMember")
	public String signupMember(@ModelAttribute("signupMember") UserLogin userLogin, BindingResult bindingResult,
			ModelMap model) throws ParseException {
		//String msg = "Welcome to wellness Login now <a href='http://localhost:8080/wellness/login'>Login </a>";
		try {
			if (hitchedService.findUser(userLogin.getEmailAddress()) == false) {
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
					model.addAttribute("error", "Password not matching ");
				}

			} else {
				model.addAttribute("error", "A user exists with the supplied email " + userLogin.getEmailAddress()
						+ " <a href='forgotpassword'> Forgot Password click here </a>");

			}

		} catch (RuntimeException e) {
			model.addAttribute("error", "Unexpected error occured");
			/*logger.error("Sorry, Unexpected error occured!", e);*/
			e.printStackTrace();

		}

		return "signups";

	}

	@RequestMapping("signup")
	public String signup(@ModelAttribute("signup") UserLogin userLogin, BindingResult bindingResult, ModelMap model)
			throws ParseException {
		String msg = "Welcome to the Gettin Hitched Login page <a href='http://localhost:8080/hitched/login'>Login </a>";

		model.addAttribute("message", "Hello " + userLogin.getFname() + " Login now <a href='login'>Login </a>");

		return "login";

	}

	/*@RequestMapping("email-lookup")
    public String handlepost(@ModelAttribute("email-lookup") UserLogin userLogin, BindingResult bindingResult, ModelMap model) throws ParseException{    	
    		    	 
	    	 try {
		    		 if(hitchedService.findUser(userLogin.getEmailAddress())== true){
		    			 model.addAttribute("attribs", hitchedService.getUserByEmailId(userLogin.getEmailAddress()));
			    		UserLogin userdetail= hitchedService.getUserByEmailId(userLogin.getEmailAddress());
			    		//model.addAttribute("attribs", userdetail);
		    		 }else{
		    			 model.addAttribute("error", "User email does noe exist in the Data base"); 
		    		 }		    		 
			     }
				 catch(EmptyResultDataAccessException e){
					
					 }catch(RuntimeException e) {						
						model.addAttribute("error", "Unexpected error occured");
						e.printStackTrace();
					    
				  }
    	 
    	 
         return "services";
    	
    }*/


	// this is a test copy of the signups function (uses registration.jsp) using Spring validation
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Model model) {
		model.addAttribute("registration", new UserLogin());

		return "registration";
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
       public String registration(@Valid @ModelAttribute("registration")
       UserLogin userLogin, BindingResult result, Model model) {
       
       if (result.hasErrors()) {
    return "registration";
       }
        if(hitchedService.findUser(userLogin.getEmailAddress())== true){
       model.addAttribute("error", "A user exists with the supplied email "+userLogin.getEmailAddress()+" <a href='forgotpassword'> Forgot Password click here </a>"); 
                  return "registration";  
         }
          if(userLogin.getPassword().equals(userLogin.getPasswordConfirm())){
        	  hitchedService.createUser(userLogin);
    
    }else{
    model.addAttribute("error", "Incorrect password");
    }
          
             return "redirect:/login";
       }	
	
	// end of code added for test copy
	@RequestMapping("about")
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
		/*logger.info("someone logg in out : ");
		if (logger.isDebugEnabled()) {
			logger.debug("logout out : ");
		}*/

		model.addAttribute("msg", "You have been logged out!");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {

		/*logger.info("called  log in : ");

		if (logger.isDebugEnabled()) {
			logger.debug("This is debug : ");
		}

		logger.debug("someone logg in out : ");*/

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
	@RequestMapping("newlogin")
	public String newlogin(@ModelAttribute("newlogin") UserLogin user, ModelMap model) throws ParseException {

		/*logger.info("user logged in : " + user.getEmailAddress());*/

		try {

			UserLogin userdetail = hitchedService.getUserByEmailId(user.getEmailAddress());

			if (validateLogin(user.getEmailAddress(), user.getPassword())) {
				model.addAttribute("success", "Welcome " + userdetail.getFname());
				model.addAttribute("attribs", userdetail);
				model.addAttribute("user", userdetail.getFname());
				model.addAttribute("role", userdetail.getRoles());

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

	public boolean validateLogin(String uname, String pswd) {
		UserLogin dbCredentials = hitchedService.getUserByEmailId(uname);
		if (!(uname.equals(dbCredentials.getEmailAddress()) && pswd.equals(dbCredentials.getPassword()))) {
			return false;
		} else
			return true;
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
	       model.addAttribute("error", "A user exists with the supplied email "+userLogin.getEmailAddress()+" <a href='forgotpassword'> Forgot Password click here </a>"); 
		return HitchedService.createUser(userLogin);
	}

	@Override
	public UserLogin updateUser(UserLogin userLogin) {
		return wellnessDao.updateUser(userLogin);
	}*/
 

}