package com.hitch.controller;

import java.text.ParseException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hitch.entity.Applications;
import com.hitch.hitchUtils.States;
import com.hitch.service.AppsService;

@Controller
public class AppsController {

	@Autowired
	private AppsService appsService;

    /*@Autowired
	    DataSource dataSource;*/
    

	@ModelAttribute("states")
	public List<States> populateStates() {
		return Arrays.asList(States.values());
	}

	@RequestMapping(value = "/applications", method = RequestMethod.GET)
	public String applications(Model model) {
		/*model.addAttribute("msg", "This is a TEST!");
		model.addAttribute("msg2", "This is the second message!");*/
		model.addAttribute("applications", appsService.getAllApps());
		

		return "applications";
	}
	
	/*@RequestMapping(value = "/applications", method = RequestMethod.GET)
	public String addresses(Model model) {
		model.addAttribute("applications", new Applications());

		return "applications";
	}*/
	
	@RequestMapping(value = "/applications", method = RequestMethod.POST)
	public String applications(@Valid @ModelAttribute("applications") Applications applications, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "applications";
		}
		try {
			 appsService.createApp(applications);
			model.addAttribute("applications", appsService.getAllApps());
			model.addAttribute("success", "applications added for " + applications.getAppName() + " Application");

		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			return "applications";
		} catch (RuntimeException e) {
			model.addAttribute("error", "Application Not Added for " + applications.getAppName() + " Application");

			e.printStackTrace();
			return "applications";
		}

		return "applications";
	}	

	/*@RequestMapping("deleteApp")
	public String deleteApp(@RequestParam long id, ModelMap model) {

		appsService.deleteAppById(applications);;
		model.addAttribute("success", "ID = " +id+ " has been removed");
		model.addAttribute("applications", appsService.getAllApps());
		
		return "about";
	}*/	

	/*@RequestMapping(value = "/testpost", method = RequestMethod.POST)
	public String test(@ModelAttribute("testpost") UserLogin user, ModelMap model) throws ParseException {

		model.addAttribute("msg2", "Post Success! You entered email: " +user.getEmailAddress()+ " and first name is " + user.getFname());
		model.addAttribute("addresses", appsService.getAllAddresses());

		return "testpage";
	}*/	

/*	public String lookcity(@ModelAttribute("lookcity") String lookcity, ModelMap model) throws ParseException {*/	
	/*@RequestMapping(value = "/lookcity", method = RequestMethod.POST)
	public String lookcity(@ModelAttribute("lookcity") long lookcity, ModelMap model) throws ParseException {

		model.addAttribute("message", lookcity + " Lookup");
		model.addAttribute("users", lookupCity(lookcity));
		model.addAttribute("users", getJoinTables(lookcity));

		return "services";
	}	
	
	 public List<Map<String, Object>> getJoinTables(long id) {
         JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
     String join="SELECT users.*, addresses.*  FROM users JOIN addresses"
                                +" ON addresses.zip = users.zip"
                                +" WHERE users.zip like '%"+ id +"%'";
      return jdbcTemplate.queryForList(join);
}
	
	@SuppressWarnings("rawtypes")
	public List<UserLogin> lookupCity(String cityOrZip) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource); 
		
       	final String sql  = "SELECT m.* FROM wellness.users m WHERE m.city like '%"+ cityOrZip +"%'"
       			+ " UNION "
       			+ "SELECT m.* FROM wellness.users m WHERE m.zip like '%"+ cityOrZip +"%'";
       	@SuppressWarnings("unchecked")
   		List<UserLogin> memberList = jdbcTemplate.query(sql, new BeanPropertyRowMapper( UserLogin.class ));						
   		return memberList;
   		 
	}*/

	
	
	
}
