package com.fpj.users.dao;

import java.util.List
;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fpj.models.User;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void add(User user) {
		getCurrentSession().save(user);
	}

	public User get(String username) {
		User user = (User) getCurrentSession().get(User.class, username);
		return user;
	}

	public void delete(String username) {
		User user = get(username);
		
		if(user != null)
			getCurrentSession().delete(user);
		
	}

	@SuppressWarnings("unchecked")
	public List<User> getAll() {
		return getCurrentSession().createQuery("from User").list();
	}

	public void update(User user) {
		String username = user.getUsername();
		String contact_num = user.getContact_num();
		Integer deptID = user.getDeptID();
		String first_name = user.getFirst_name();
		String middle_name = user.getMiddle_name();
		String surname = user.getSurname();
		String password = user.getPassword();
		
		User userToUpdate = get(username);
		userToUpdate.setContact_num(contact_num);
		userToUpdate.setDeptID(deptID);
		userToUpdate.setFirst_name(first_name);
		userToUpdate.setMiddle_name(middle_name);
		userToUpdate.setSurname(surname);
		userToUpdate.setPassword(password);
		
		getCurrentSession().update(userToUpdate);
		
	}

}
