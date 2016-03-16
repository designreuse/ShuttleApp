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

import com.fpj.models.Schedule;
import com.fpj.schedules.services.ScheduleService;

@Controller
public class ScheduleController {

	private static String INDEX_PAGE = "schedules/index";
	private static String ADD_PAGE = "schedules/add";
	
	private static String TABLE_HEAD = "Manage Schedules";
	private static String ADD_BUTTON = "Add Schedule";
	
	private static String CREATE_LINK = "/schedules/create";
	private static String DELETE_LINK = "/schedules/delete";
	private static String UPDATE_LINK = "/schedules/update";
	
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value="/schedules")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		ModelAndView modelAndView = new ModelAndView(INDEX_PAGE);
		List<Schedule> schedules = scheduleService.getAll();
		
		// Just Text
		modelAndView.addObject("table_head", TABLE_HEAD);
		modelAndView.addObject("add_button", ADD_BUTTON);
		
		// Actual data
		modelAndView.addObject("schedule", new Schedule());
		modelAndView.addObject("schedules", schedules);
		modelAndView.addObject("createLink", CREATE_LINK);
		modelAndView.addObject("deleteLink", DELETE_LINK);
		modelAndView.addObject("updateLink", UPDATE_LINK);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/schedules/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(ADD_PAGE);
	}
	
	@RequestMapping(value="/schedules/create")
	public ModelAndView create(@ModelAttribute Schedule schedule) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/schedules");
		scheduleService.add(schedule);
		return modelAndView;
	}
	
	@RequestMapping(value="/schedules/delete/{dept_id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable Integer schedule_id) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/schedules");
		scheduleService.delete(schedule_id);
		String message = "Successfully deleted.";
        modelAndView.addObject("message", message);
		return modelAndView;
	}
	
	public ModelAndView update(@ModelAttribute Schedule schedule, @PathVariable Integer dept_id) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/schedules");
		scheduleService.update(schedule);
		String message = "Successfully updated.";
        modelAndView.addObject("message", message);
		return modelAndView;
	}
}
