package com.fpj.reservation.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fpj.models.Reservation;

@Repository
public class ReservationDaoImpl implements ReservationDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void add(Reservation reservation) {
		getCurrentSession().save(reservation);
		
	}

	public void update(Reservation reservation) {
		Integer reservation_id = reservation.getReservation_id();
		Integer car_id = reservation.getCar_id();
		String driver_name = reservation.getDriver_name();
		Integer sched_id = reservation.getSched_id();
		String username = reservation.getUsername();
		
		Reservation reservation_update = get(reservation_id);
		reservation_update.setCar_id(car_id);
		reservation_update.setDriver_name(driver_name);
		reservation_update.setSched_id(sched_id);
		reservation_update.setUsername(username);
		
		getCurrentSession().update(reservation_update);
		
	}

	public Reservation get(Integer reservation_id) {
		Reservation reservation = (Reservation) getCurrentSession().get(Reservation.class, reservation_id);
		return reservation;
	}

	public void delete(Integer reservation_id) {
		Reservation reservation = get(reservation_id);
		
		if(reservation != null)
			getCurrentSession().delete(reservation);
	}

	@SuppressWarnings("unchecked")
	public List<Reservation> getAll() {
		return getCurrentSession().createQuery("from Reservation").list();
	}

}
