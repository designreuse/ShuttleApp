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
	
	@RequestMapping(value="/roles")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		return new ModelAndView(INDEX_PAGE);
	}
	
	@RequestMapping(value="/roles/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(ADD_PAGE);
	}
}
