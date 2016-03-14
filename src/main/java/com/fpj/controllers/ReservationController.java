package com.fpj.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReservationController {

	private static String INDEX_PAGE = "reservations/index";
	private static String CREATE_PAGE = "reservations/create";
	
	@RequestMapping(value="/reservations")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		return new ModelAndView(INDEX_PAGE);
	}
	
	@RequestMapping(value="/reserve")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(CREATE_PAGE);
	}
}
