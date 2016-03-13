package com.fpj.role.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.fpj.models.Role;

public class RoleDaoImpl implements RoleDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void add(Role role) {
		getCurrentSession().save(role);
	}

	public void update(Role role) {
		Integer role_id = role.getRole_id();
		String role_name = role.getRole_name();
		
		Role role_updated = get(role_id);
		role_updated.setRole_name(role_name);
		getCurrentSession().update(role_updated);
		
	}

	public Role get(Integer role_id) {
		return (Role) getCurrentSession().get(Role.class, role_id);
	}

	public void delete(Integer role_id) {
		getCurrentSession().delete(role_id);
	}

	@SuppressWarnings("unchecked")
	public List<Role> getAll() {
		return getCurrentSession().createQuery("from Role").list();
	}

}
