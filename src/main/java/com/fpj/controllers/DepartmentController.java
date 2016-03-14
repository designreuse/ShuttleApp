package com.fpj.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fpj.depts.services.DeptService;
import com.fpj.models.Dept;

@Controller
public class DepartmentController {

	private static String INDEX_PAGE = "department/index";
	private static String ADD_PAGE = "department/add";
	
	@Autowired
	private DeptService deptService;
	
	@RequestMapping(value="/departments")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		ModelAndView modelAndView = new ModelAndView(INDEX_PAGE);
		
		List<Dept> depts = deptService.getAll();		
		modelAndView.addObject("dept", new Dept());
		modelAndView.addObject("depts", depts);
		return modelAndView;
	}
	
	@RequestMapping(value="/departments/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(ADD_PAGE);
	}
	
	@RequestMapping(value="/departments/create")
	public ModelAndView create(@ModelAttribute Dept dept) throws IOException{
		ModelAndView modelAndView = new ModelAndView(INDEX_PAGE);
		deptService.add(dept);
		return modelAndView;
	}
}
