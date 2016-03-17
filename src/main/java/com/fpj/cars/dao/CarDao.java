package com.fpj.cars.dao;

import java.util.List;

import com.fpj.models.Car;


public interface CarDao {

	public void add(Car car);
	public void update(Car car);
	public Car get(String plate_num);
	public void delete(String plate_num);
	public List<Car> getAll();
}
