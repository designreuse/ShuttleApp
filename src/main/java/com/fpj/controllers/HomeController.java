package com.fpj.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	private static String INDEX_PAGE = "home/index";
	
	@RequestMapping(value="/")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		return new ModelAndView(INDEX_PAGE);
	}
	
}
