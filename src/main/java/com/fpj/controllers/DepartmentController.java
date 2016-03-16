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

import com.fpj.depts.services.DeptService;
import com.fpj.models.Dept;

@Controller
public class DepartmentController {

	private static String INDEX_PAGE = "department/index";
	private static String ADD_PAGE = "department/add";
	
	private static String TABLE_HEAD = "Manage Departments";
	private static String ADD_BUTTON = "Add Department";
	
	private static String CREATE_LINK = "/departments/create";
	
	@Autowired
	private DeptService deptService;
	
	@RequestMapping(value="/departments")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		ModelAndView modelAndView = new ModelAndView(INDEX_PAGE);
		List<Dept> depts = deptService.getAll();
		
		// Just Text
		modelAndView.addObject("table_head", TABLE_HEAD);
		modelAndView.addObject("add_button", ADD_BUTTON);
		
		// Actual data
		modelAndView.addObject("dept", new Dept());
		modelAndView.addObject("depts", depts);
		modelAndView.addObject("createLink", CREATE_LINK);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/departments/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(ADD_PAGE);
	}
	
	@RequestMapping(value="/departments/create")
	public ModelAndView create(@ModelAttribute Dept dept) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/departments");
		deptService.add(dept);
		return modelAndView;
	}
	
	@RequestMapping(value="/departments/delete/{dept_id}", method=RequestMethod.POST)
	public ModelAndView delete(@PathVariable Integer dept_id) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/departments");
		deptService.delete(dept_id);
		String message = "Successfully deleted.";
        modelAndView.addObject("message", message);
		return modelAndView;
	}
	
	public ModelAndView update(@ModelAttribute Dept dept, @PathVariable Integer dept_id) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/departments");
		deptService.update(dept);
		String message = "Successfully updated.";
        modelAndView.addObject("message", message);
		return modelAndView;
	}
}
