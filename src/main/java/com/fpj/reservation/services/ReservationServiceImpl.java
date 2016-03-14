package com.fpj.reservation.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpj.models.Reservation;
import com.fpj.reservation.dao.ReservationDaoImpl;

@Service
@Transactional
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDaoImpl reservationDao;
	
	public void add(Reservation reservation) {
		reservationDao.add(reservation);
	}

	public void update(Reservation reservation) {
		reservationDao.update(reservation);
	}

	public Reservation get(Integer reservation_id) {
		return reservationDao.get(reservation_id);
	}

	public void delete(Integer reservation_id) {
		reservationDao.delete(reservation_id);
	}

	public List<Reservation> getAll() {
		return reservationDao.getAll();
	}

}
