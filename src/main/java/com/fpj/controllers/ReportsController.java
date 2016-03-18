package com.fpj.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReportsController {

	private static String INDEX_PAGE = "reports/index";

	@RequestMapping(value = "/reports")
	public ModelAndView index(HttpServletResponse response) throws IOException {
		return new ModelAndView(INDEX_PAGE);
	}

	@RequestMapping(value = "/reports/car")
	public ModelAndView car(HttpServletResponse response) throws IOException {
		return new ModelAndView("reports/car");
	}

	@RequestMapping(value = "/reports/booklist")
	public ModelAndView booklist(HttpServletResponse response) throws IOException {
		return new ModelAndView("reports/booklist");
	}

	@RequestMapping(value = "/reports/department")
	public ModelAndView department(HttpServletResponse response) throws IOException {
		return new ModelAndView("reports/department");
	}

	@RequestMapping(value = "/reports/schedules")
	public ModelAndView schedule(HttpServletResponse response) throws IOException {
		return new ModelAndView("reports/schedule");
	}

}
