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
		Integer car_id = car.getCar_id();
		String color = car.getColor();
		String model = car.getModel();
		String plate_num = car.getPlate_num();
		
		Car car_update = get(car_id);
		car_update.setColor(color);
		car_update.setModel(model);
		car_update.setPlate_num(plate_num);
		getCurrentSession().update(car_update);
		
	}

	public Car get(Integer car_id) {
		Car car = (Car) getCurrentSession().get(Car.class, car_id);
		return car;
	}

	public void delete(Integer car_id) {
		Car car = get(car_id);
		
		if(car != null)
			getCurrentSession().delete(car);
		
	}

	@SuppressWarnings("unchecked")
	public List<Car> getAll() {
		return getCurrentSession().createQuery("from Car").list();
	}

}
