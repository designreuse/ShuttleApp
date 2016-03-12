package com.fpj.reservation.dao;

import java.util.List;

import com.fpj.models.Reservation;

public interface ReservationDao {

	public void add(Reservation reservation);
	public void update(Reservation reservation);
	public Reservation get(Integer reservation_id);
	public void delete(Integer reservation_id);
	public List<Reservation> getAll();
}
