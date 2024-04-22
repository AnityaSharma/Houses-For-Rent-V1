package dev.anitya.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import dev.anitya.model.Property;

public interface IPropertyRepo extends JpaRepository<Property, Long> {
	
	@Query("FROM Property WHERE state = :st AND city = :ct")
	public Page<Property> findByStateAndCity(String st,String ct,Pageable pageable);
	
	@Query("From Property WHERE user = :id")
	public List<Property> getByUser(long id);
//	public List<Property> findAllProperties();
	
}
