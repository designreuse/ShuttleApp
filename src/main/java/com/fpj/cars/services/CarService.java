package com.fpj.cars.services;

import java.util.List;

import com.fpj.models.Car;

public interface CarService {
	public void add(Car car);
	public void update(Car car);
	public Car get(String plate_num);
	public void delete(String plate_num);
	public List<Car> getAll();
}
