package com.fpj.schedules.dao;

import java.util.List;

import com.fpj.models.Schedule;

public interface ScheduleDao {

	public void add(Schedule schedule);
	public void update(Schedule schedule);
	public Schedule get(Integer schedule_id);
	public void delete(Integer schedule_id);
	public List<Schedule> getAll();
}
