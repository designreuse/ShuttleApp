package com.fpj.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fpj.models.Role;
import com.fpj.role.services.RoleService;

@Controller
public class RoleController {

	private static String INDEX_PAGE = "roles/index";
	private static String ADD_PAGE = "roles/add";
	
	private static String TABLE_HEAD = "Manage Roles";
	private static String ADD_BUTTON = "Add Role";
	
	private static String CREATE_LINK = "/roles/create";
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value="/roles")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		ModelAndView modelAndView = new ModelAndView(INDEX_PAGE);
		List<Role> roles = roleService.getAll();
		
		// Just Text
		modelAndView.addObject("table_head", TABLE_HEAD);
		modelAndView.addObject("add_button", ADD_BUTTON);
		
		// Actual data
		modelAndView.addObject("roles", roles);
		modelAndView.addObject("role", new Role());
		modelAndView.addObject("createLink", CREATE_LINK);
		return modelAndView;
	}
	
	@RequestMapping(value="/roles/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(ADD_PAGE);
	}
	
	@RequestMapping(value="/roles/create")
	public ModelAndView create(@ModelAttribute Role role) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/roles");
		roleService.add(role);
		return modelAndView;
	}
	
	@RequestMapping(value="/roles/delete/{dept_id}", method=RequestMethod.POST)
	public ModelAndView delete(@PathVariable Integer role_id) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/roles");
		roleService.delete(role_id);
		String message = "Successfully deleted.";
        modelAndView.addObject("message", message);
		return modelAndView;
	}
	
	public ModelAndView update(@ModelAttribute Role role, @PathVariable Integer role_id) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/roles");
		roleService.update(role);
		String message = "Successfully updated.";
        modelAndView.addObject("message", message);
		return modelAndView;
	}
}
