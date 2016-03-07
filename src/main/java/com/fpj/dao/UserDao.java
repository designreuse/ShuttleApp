package com.fpj.dao;

import org.springframework.data.repository.CrudRepository;

import com.jom.models.User;

public interface UserDao extends CrudRepository<User, Long>{

}
