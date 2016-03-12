package com.fpj.depts.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpj.depts.dao.DeptDaoImpl;
import com.fpj.models.Dept;

@Service
@Transactional
public class DeptServiceImpl implements DeptService {

	@Autowired
	private DeptDaoImpl deptDao;
	
	public void add(Dept dept) {
		deptDao.add(dept);
	}

	public void update(Dept dept) {
		deptDao.update(dept);
		
	}

	public Dept get(Integer dept_id) {
		return deptDao.get(dept_id);
	}

	public void delete(Integer dept_id) {
		deptDao.delete(dept_id);
		
	}

	public List<Dept> getAll() {
		return deptDao.getAll();
	}

}
