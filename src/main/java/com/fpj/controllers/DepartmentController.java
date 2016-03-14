package com.fpj.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DepartmentController {

	private static String INDEX_PAGE = "department/index";
	private static String ADD_PAGE = "department/add";
	
	@RequestMapping(value="/departments")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		return new ModelAndView(INDEX_PAGE);
	}
	
	@RequestMapping(value="/departments/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(ADD_PAGE);
	}
}
