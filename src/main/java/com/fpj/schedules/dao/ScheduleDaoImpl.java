package com.fpj.schedules.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fpj.models.Schedule;

@Repository
public class ScheduleDaoImpl implements ScheduleDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void add(Schedule schedule) {
		getCurrentSession().save(schedule);
	}

	public void update(Schedule schedule) {
		Integer schedule_id = schedule.getSched_id();
		Date dropoff_time = schedule.getDropoff_time();
		String from_location = schedule.getFrom_location();
		String to_location = schedule.getTo_location();
		
		Schedule schedule_update = get(schedule_id);
		schedule_update.setDropoff_time(dropoff_time);
		schedule_update.setFrom_location(from_location);
		schedule_update.setTo_location(to_location);
		
		getCurrentSession().update(schedule_update);
	}

	public Schedule get(Integer schedule_id) {
		return (Schedule)getCurrentSession().get(Schedule.class, schedule_id);
	}

	public void delete(Integer schedule_id) {
		Schedule schedule = get(schedule_id);
		if(schedule != null)
			getCurrentSession().delete(schedule);
		
	}

	@SuppressWarnings("unchecked")
	public List<Schedule> getAll() {
		return getCurrentSession().createQuery("from Schedule").list();
	}

}
