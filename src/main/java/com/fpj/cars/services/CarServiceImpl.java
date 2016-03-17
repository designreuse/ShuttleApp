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
		carDao.update(car);
	}

	public Car get(String plate_num) {
		return carDao.get(plate_num);
	}

	public void delete(String plate_num) {
		carDao.delete(plate_num);
	}

	public List<Car> getAll() {
		return carDao.getAll();
	}

}
