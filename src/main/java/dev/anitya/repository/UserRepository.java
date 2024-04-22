package dev.anitya.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import dev.anitya.model.User;
import dev.anitya.model.UserRegisteration;

public interface UserRepository extends JpaRepository<UserRegisteration, Long>{
	
	public boolean existsByeMail(String email);
	
//	@Query("FROM UserRegisteration WHERE eMail = :email")
	public UserRegisteration findByeMail(String email);
}
