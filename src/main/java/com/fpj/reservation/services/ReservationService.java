package com.fpj.reservation.services;

import java.util.List;

import com.fpj.models.Reservation;

public interface ReservationService {

	public void add(Reservation reservation);
	public void update(Reservation reservation);
	public Reservation get(Integer reservation_id);
	public void delete(Integer reservation_id);
	public List<Reservation> getAll();
}
