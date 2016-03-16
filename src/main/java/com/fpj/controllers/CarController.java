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

import com.fpj.cars.services.CarService;
import com.fpj.models.Car;

@Controller
public class CarController {

	private static String INDEX_PAGE = "cars/index";
	private static String ADD_PAGE = "cars/add";
	
	private static String TABLE_HEAD = "Manage Vehicles";
	private static String ADD_BUTTON = "Add Vehicles";
	
	private static String CREATE_LINK = "/cars/create";
	private static String DELETE_LINK = "/cars/delete";
	private static String UPDATE_LINK = "/cars/update";
	
	@Autowired
	private CarService carService;
	
	@RequestMapping(value="/cars")
	public ModelAndView index(HttpServletResponse response) throws IOException{
		ModelAndView modelAndView = new ModelAndView(INDEX_PAGE);
		List<Car> cars = carService.getAll();
		
		// Just Text
		modelAndView.addObject("table_head", TABLE_HEAD);
		modelAndView.addObject("add_button", ADD_BUTTON);
		
		// Actual data
		modelAndView.addObject("car", new Car());
		modelAndView.addObject("cars", cars);
		modelAndView.addObject("createLink", CREATE_LINK);
		modelAndView.addObject("deleteLink", DELETE_LINK);
		modelAndView.addObject("updateLink", UPDATE_LINK);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/cars/add")
	public ModelAndView add(HttpServletResponse response) throws IOException{
		return new ModelAndView(ADD_PAGE);
	}
	
	@RequestMapping(value="/cars/create")
	public ModelAndView create(@ModelAttribute Car car) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/cars");
		carService.add(car);
		return modelAndView;
	}
	
	@RequestMapping(value="/cars/delete/{dept_id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable Integer car_id) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/cars");
		carService.delete(car_id);
		String message = "Successfully deleted.";
        modelAndView.addObject("message", message);
		return modelAndView;
	}
	
	public ModelAndView update(@ModelAttribute Car car, @PathVariable Integer car_id) throws IOException{
		ModelAndView modelAndView = new ModelAndView("redirect:/cars");
		carService.update(car);
		String message = "Successfully updated.";
        modelAndView.addObject("message", message);
		return modelAndView;
	}
}
