package com.hitch.controller;

import java.text.ParseException;

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

    /*SendMail sendMail =new SendMail();*/
    /*WellnessUtils wellnessUtils=new WellnessUtils();*/
    
    @RequestMapping(value = "/jdbcCrudes", method = RequestMethod.GET)
    public String services(Model model) {
         /*model.addAttribute("attribs", hitchedService.jdbcDbConnect("bdgroom@att.net"));*/
              
        return "jdbcCrudes";
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
    model.addAttribute("error", "These Passwords don't matching ");
    }
          
             return "redirect:/login";
       }	
	
	// end of code added for test copy
	@RequestMapping("about")
    public String about(Model model) {
    	
		model.addAttribute("message", "This is the About Us Page");
    	/*model.addAttribute("addresses", locationService.getAllAddresses());*/
    	
        return "about";
    }
    
    
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contact(Model model) {
    	model.addAttribute("sendEmail", new UserLogin());
    	model.addAttribute("message", "Welcome to Gettin Hitched, please drop us an email"); 
    	
        return "contact";
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