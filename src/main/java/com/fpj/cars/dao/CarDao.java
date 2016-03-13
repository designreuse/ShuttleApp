package com.fpj.cars.dao;

import java.util.List;

import com.fpj.models.Car;


public interface CarDao {

	public void add(Car car);
	public void update(Car car);
	public Car get(Integer car_id);
	public void delete(Integer car_id);
	public List<Car> getAll();
}
