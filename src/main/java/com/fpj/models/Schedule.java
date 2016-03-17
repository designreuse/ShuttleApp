package com.fpj.models;


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
	
	private String dropoff_time;
	private String dropoff_date;
	
	private String plate_num;
	
	public String getPlate_num() {
		return plate_num;
	}
	public void setPlate_num(String plate_num) {
		this.plate_num = plate_num;
	}
	public String getDropoff_date() {
		return dropoff_date;
	}
	public void setDropoff_date(String dropoff_date) {
		this.dropoff_date = dropoff_date;
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
	public String getDropoff_time() {
		return dropoff_time;
	}
	public void setDropoff_time(String dropoff_time) {
		this.dropoff_time = dropoff_time;
	}
	
	
}
