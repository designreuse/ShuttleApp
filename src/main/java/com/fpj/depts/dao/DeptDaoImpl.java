package com.fpj.depts.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fpj.models.Dept;

@Repository
public class DeptDaoImpl implements DeptDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void add(Dept dept) {
		getCurrentSession().save(dept);
		
	}

	public void update(Dept dept) {
		Integer dept_id = dept.getDept_id();
		String dept_name = dept.getDept_name();
		
		Dept dept_update = get(dept_id);
		dept_update.setDept_name(dept_name);
		getCurrentSession().update(dept_update);
	}

	public Dept get(Integer dept_id) {
		Dept dept = (Dept) getCurrentSession().get(Dept.class, dept_id);
		return dept;
	}

	public void delete(Integer dept_id) {
		Dept dept = get(dept_id);
		
		if(dept != null)
			getCurrentSession().delete(dept);
		
	}

	@SuppressWarnings("unchecked")
	public List<Dept> getAll() {
		return getCurrentSession().createQuery("from Dept").list();
	}

}
