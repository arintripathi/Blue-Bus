package com.nrifintech.bms.service.impl;

import java.util.Objects;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nrifintech.bms.entity.Admin;
import com.nrifintech.bms.repository.UserRepository;
import com.nrifintech.bms.request.UserLoginRequest;
import com.nrifintech.bms.service.UserService;

/**
 * @author	Debopam
 * @email	debpal07@gmail.com
 * @created	Nov 9, 2021
 */
@Service
@Transactional
public class UserServiceImpl extends AbstractBaseServiceImpl<Admin, Long> implements UserService {

	@Autowired
	private UserRepository userRepository;
	
	public UserServiceImpl(UserRepository userRepository) {
		super(userRepository);
		this.userRepository = userRepository;
	}

	@Override
	public boolean isValidUser(UserLoginRequest userLoginRequest) {
		
		if(Objects.isNull(userLoginRequest.getUsername()) || Objects.isNull(userLoginRequest.getPassword())) {
			return false;
		}
		
		Admin fetchedUser = userRepository.findByUsernameAndPassword(userLoginRequest.getUsername(), userLoginRequest.getPassword());
		
		if(!Objects.isNull(fetchedUser)) return true;
		else return false;
	}

	
}
