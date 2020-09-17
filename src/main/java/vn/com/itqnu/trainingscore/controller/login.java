package vn.com.itqnu.trainingscore.controller;

import java.util.ArrayList;

import java.util.List;
 

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/")
public class login {
	
	   
	 @RequestMapping(value = "login", method = RequestMethod.GET)
	    public String login(ModelMap m) {
		 String message = "Hello Spring Boot";
		 
	        m.addAttribute("message", message);
	        return "login";
	    }
	   
	 @RequestMapping(value = { "/List" }, method = RequestMethod.GET)
	    public String viewPersonList(Model model) {
		 String persons = "Hello Spring Boot";
	        model.addAttribute("persons", persons);
	 
	        return "cay à đáu l";
	    }
	    
	    }
	  
