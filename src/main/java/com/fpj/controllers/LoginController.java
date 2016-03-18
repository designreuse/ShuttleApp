package com.fpj.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping(value="/login")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		return new ModelAndView("login/login");
	}
	
	@RequestMapping(value="/redirect")
	public ModelAndView redirect(HttpServletResponse response) throws IOException{
		return new ModelAndView("redirect:/");
	}
}
