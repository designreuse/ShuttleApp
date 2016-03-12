package com.fpj.users.services;

import java.util.List;


import com.fpj.models.User;

public interface UserService {
	public void add(User user);
	public void update(User user);
	public User get(String username);
	public void delete(String username);
	public List<User> getAll();
}
