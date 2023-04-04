package com.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.model.User;
import com.user.repo.UserRepo;



@Controller
public class UserController {

	@Autowired
	private UserRepo upo;
	
	@RequestMapping("/")
	public String home(){ 
		return"home";
	}
	
	@RequestMapping("/adduser")
	public String addUser(Model model) { 
		
		User user= new User();
		model.addAttribute("user",user);
		return"adduser";
	}
	
	@RequestMapping("/success")
	public String successPage(@ModelAttribute User user,ModelMap m) {
		
		upo.save(user);
		
		m.put("users", user);
		return "success";
	}
	
	@RequestMapping("/viewuser")
	public String viewUser(ModelMap m) {
		
		List<User> user = new ArrayList<>();
		user=(List<User>) upo.findAll();
		m.put("us", user);
		
		return "viewuser";
	}
	

	
	@RequestMapping(value = "deleteuser/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		upo.deleteById(id);
		return "redirect:/viewuser";
	}
	
	
	
	@RequestMapping(value="edituser/{id}",method = RequestMethod.GET)
	public String editUser(@PathVariable("id") int id ,ModelMap m,Model model) {
		
		User user= new User();
		model.addAttribute("user",user);
		User us=upo.findById(id).get();
		m.put("us", us);
		
		return "edituser";
	}
	
}
