package dev.anitya.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import dev.anitya.model.Image;

public interface ImageRepository extends JpaRepository<Image,Long>{
	public Optional<Image> findByName(String fileName);
}
