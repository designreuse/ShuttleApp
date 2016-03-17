package com.fpj.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fpj.models.Car;
import com.fpj.models.Reservation;
import com.fpj.models.Schedule;
import com.fpj.reservation.services.ReservationService;
import com.fpj.schedules.services.ScheduleService;

@Controller
public class ReservationController {

	private static String INDEX_PAGE = "reservations/index";
	private static String CREATE_PAGE = "reservations/add";
	
	private static String TABLE_HEAD = "Manage Schedules";
	private static String ADD_BUTTON = "Add Schedule";
	
	private static String CREATE_LINK = "/reservations/create";
	private static String DELETE_LINK = "/reservations/delete";
	private static String UPDATE_LINK = "/reservations/update";
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value="/reservations")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		return new ModelAndView(INDEX_PAGE);
	}
	
	@RequestMapping(value="/reserve")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		ModelAndView modelAndView = new ModelAndView(CREATE_PAGE);
		List<Reservation> reservations = reservationService.getAll();
		List<Schedule> schedules = scheduleService.getAll();
		List<String> to_locations = new ArrayList<String>();
		List<String> from_locations = new ArrayList<String>();
		
		for(Schedule schedule:schedules){
			to_locations.add(schedule.getTo_location());
			from_locations.add(schedule.getFrom_location());
		}
		
		// Just Text
		modelAndView.addObject("table_head", TABLE_HEAD);
		modelAndView.addObject("add_button", ADD_BUTTON);
		
		// Actual data
		modelAndView.addObject("reservation", new Reservation());
		modelAndView.addObject("schedules", schedules);
		modelAndView.addObject("reservations", reservations);
		modelAndView.addObject("createLink", CREATE_LINK);
		modelAndView.addObject("deleteLink", DELETE_LINK);
		modelAndView.addObject("updateLink", UPDATE_LINK);
		modelAndView.addObject("to_locations", to_locations);
		modelAndView.addObject("from_locations", from_locations);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/reservations/create", method=RequestMethod.POST)
	public ModelAndView create(@ModelAttribute Reservation reservation) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/");
		reservationService.add(reservation);
		return modelAndView;
	}
}
