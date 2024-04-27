package dev.anitya.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;

import dev.anitya.dto.UserLogin;
import dev.anitya.model.Property;
import dev.anitya.model.User;
import dev.anitya.model.UserRegisteration;
import dev.anitya.repository.UserRepository;
import jakarta.transaction.Transactional;

@Service
public class UserService {
	
	@Autowired
	UserRepository repository;
	
	public Boolean isAvailable(String eMail) {
		return repository.existsByeMail(eMail);
	}
	
	public String registerUser(UserRegisteration user) {
		UserRegisteration u=repository.save(user);
		return "User registered with id "+u.getId();
	}
	
	@Transactional
	@Modifying
	public boolean addUser(UserRegisteration user) {
		try {
			repository.save(user);
		}catch(Exception e) {
			return false;
		}
		return true;
	}

	public boolean authenticate(UserLogin user) {
		String password=user.getPassword();
		UserRegisteration u=repository.findByeMail(user.geteMail());
//		System.out.println();
		if(u.getPassword().equals(user.getPassword())) {
			return true;
		}
		return false;
	}
	
	public UserRegisteration getUserByEmail(String email) {
		return repository.findByeMail(email);
	}
	
	public UserRegisteration getUserById(long id) {
		UserRegisteration o= repository.getReferenceById(id);
		return o;
	}
	
	public boolean isAuthorized(Long userId, long id) {
		UserRegisteration user=getUserById(userId);
		List<Property> list=user.getProperties();
		for(Property property:list)
			if(property.getId()==id)
				return true;
		return false;
	}
}
