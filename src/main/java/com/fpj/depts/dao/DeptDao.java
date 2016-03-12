package com.fpj.depts.dao;

import java.util.List;

import com.fpj.models.Dept;

public interface DeptDao {

	public void add(Dept dept);
	public void update(Dept dept);
	public Dept get(Integer dept_id);
	public void delete(Integer dept_id);
	public List<Dept> getAll();
}
