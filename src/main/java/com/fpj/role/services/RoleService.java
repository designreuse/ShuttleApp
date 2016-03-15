package com.fpj.role.services;

import java.util.List;

import com.fpj.models.Role;

public interface RoleService {
	public void add(Role role);
	public void update(Role role);
	public Role get(Integer role_id);
	public void delete(Integer role_id);
	public List<Role> getAll();
}
