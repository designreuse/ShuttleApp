package com.fpj.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RoleController {

	private static String INDEX_PAGE = "roles/index";
	private static String ADD_PAGE = "roles/add";
	
	private static String TABLE_HEAD = "Manage Roles";
	private static String ADD_BUTTON = "Add Role";
	
	@RequestMapping(value="/roles")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		ModelAndView modelAndView = new ModelAndView(INDEX_PAGE);
		modelAndView.addObject("table_head", TABLE_HEAD);
		modelAndView.addObject("add_button", ADD_BUTTON);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/roles/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(ADD_PAGE);
	}
}
