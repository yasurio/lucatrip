package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.User;

public interface IUserRepository extends CrudRepository<User, Integer>{

	User findByEmail(String email);
	
}
