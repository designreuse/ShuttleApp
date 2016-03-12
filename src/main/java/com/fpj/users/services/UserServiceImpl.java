package com.fpj.users.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fpj.models.User;
import com.fpj.users.dao.UserDaoImpl;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDaoImpl userDao;
	
	public void add(User user) {
		userDao.add(user);
	}

	public void update(User user) {
		userDao.update(user);
	}

	public User get(String username) {
		return userDao.get(username);
	}

	public void delete(String username) {
		userDao.delete(username);
	}

	public List<User> getAll() {
		return userDao.getAll();
	}

}
