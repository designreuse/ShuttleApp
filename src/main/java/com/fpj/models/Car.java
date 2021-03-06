package com.fpj.models;

import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cars")
/*
 * car_id integer not null primary key,
plate_num varchar(255),
capacity integer,
color varchar(255),
model varchar(255)
 */
public class Car {

	@Id
	private String plate_num;
	private Integer capacity;
	private String color;
	private String model;

	public String getPlate_num() {
		return plate_num;
	}
	public void setPlate_num(String plate_num) {
		this.plate_num = plate_num;
	}
	public Integer getCapacity() {
		return capacity;
	}
	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	
}
