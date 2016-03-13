package com.fpj.cars.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpj.cars.dao.CarDaoImpl;
import com.fpj.models.Car;

@Service
@Transactional
public class CarServiceImpl implements CarService{

	@Autowired
	private CarDaoImpl carDao;
	
	public void add(Car car) {
		carDao.add(car);
		
	}

	public void update(Car car) {
		carDao.update(car);;
	}

	public Car get(Integer car_id) {
		return carDao.get(car_id);
	}

	public void delete(Integer car_id) {
		carDao.delete(car_id);
	}

	public List<Car> getAll() {
		return carDao.getAll();
	}

}
