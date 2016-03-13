package com.fpj.schedules.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpj.models.Schedule;
import com.fpj.schedules.dao.ScheduleDaoImpl;

@Service
@Transactional
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleDaoImpl scheduleDao;
	
	public void add(Schedule schedule) {
		scheduleDao.add(schedule);
	}

	public void update(Schedule schedule) {
		scheduleDao.update(schedule);
	}

	public Schedule get(Integer schedule_id) {
		return scheduleDao.get(schedule_id);
	}

	public void delete(Integer schedule_id) {
		scheduleDao.delete(schedule_id);
	}

	public List<Schedule> getAll() {
		return scheduleDao.getAll();
	}

}
