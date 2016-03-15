package com.fpj.role.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpj.models.Role;
import com.fpj.role.dao.RoleDaoImpl;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleDaoImpl roleDao;
	
	public void add(Role role) {
		roleDao.add(role);
	}

	public void update(Role role) {
		roleDao.update(role);
	}

	public Role get(Integer role_id) {
		return roleDao.get(role_id);
	}

	public void delete(Integer role_id) {
		roleDao.delete(role_id);
	}

	public List<Role> getAll() {
		return roleDao.getAll();
	}

}
