package com.example.demo.service.impl;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IUserRepository;
import com.example.demo.model.User;
import com.example.demo.service.IUserSevice;

@Service
public class UserServiceImpl implements IUserSevice {

	@Autowired
	private IUserRepository userRepository;

	@Override
	public User save(User user) {
		return userRepository.save(user);
	}

	@Override
	public Boolean delete(int id) {
		if (userRepository.existsById(id)) {
			userRepository.deleteById(id);
			return true;
		}
		return false;
	}

	@Override
	public User update(User user) {
		return userRepository.save(user);
	}

	@Override
	public User findById(int id) {
		return userRepository.findById(id).get();
	}

	@Override
	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	@Override
	public Collection<User> findAll() {
		Iterable<User> itr = userRepository.findAll();
		return (Collection<User>) itr;
	}

}
