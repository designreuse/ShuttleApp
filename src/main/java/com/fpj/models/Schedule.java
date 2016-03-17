package com.fpj.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="schedules")
public class Schedule {

	@Id
	@GeneratedValue
	private Integer sched_id;
	
	private String from_location;
	private String to_location;
	private Date dropoff_time;
	private Date dropoff_date;
	private Integer car_id;
	
	public Date getDropoff_date() {
		return dropoff_date;
	}
	public void setDropoff_date(Date dropoff_date) {
		this.dropoff_date = dropoff_date;
	}
	public Integer getCar_id() {
		return car_id;
	}
	public void setCar_id(Integer car_id) {
		this.car_id = car_id;
	}
	public Integer getSched_id() {
		return sched_id;
	}
	public void setSched_id(Integer sched_id) {
		this.sched_id = sched_id;
	}
	public String getFrom_location() {
		return from_location;
	}
	public void setFrom_location(String from_location) {
		this.from_location = from_location;
	}
	public String getTo_location() {
		return to_location;
	}
	public void setTo_location(String to_location) {
		this.to_location = to_location;
	}
	public Date getDropoff_time() {
		return dropoff_time;
	}
	public void setDropoff_time(Date dropoff_time) {
		this.dropoff_time = dropoff_time;
	}
	
	
}
