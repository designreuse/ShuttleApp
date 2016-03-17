package com.fpj.cars.dao;

import java.util.List
;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fpj.models.Car;

@Repository
public class CarDaoImpl implements CarDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void add(Car car) {
		getCurrentSession().save(car);
		
	}

	public void update(Car car) {
		String plate_num = car.getPlate_num();
		String color = car.getColor();
		String model = car.getModel();
		
		Car car_update = get(plate_num);
		car_update.setColor(color);
		car_update.setModel(model);
		getCurrentSession().update(car_update);
		
	}

	public Car get(String plate_num) {
		Car car = (Car) getCurrentSession().get(Car.class, plate_num);
		return car;
	}

	public void delete(String plate_num) {
		Car car = get(plate_num);
		
		if(car != null)
			getCurrentSession().delete(car);
		
	}

	@SuppressWarnings("unchecked")
	public List<Car> getAll() {
		return getCurrentSession().createQuery("from Car").list();
	}

}
