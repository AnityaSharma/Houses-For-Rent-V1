package dev.anitya.tenantcontroller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import dev.anitya.model.Image;
import dev.anitya.repository.ImageRepository;
import dev.anitya.service.PropertyService;

@RestController
public class ImageController {

//	private final String IMAGE_DIRECTORY="C:\\Users\\anity\\Server-File-System\\";
	
	@Autowired
	private ImageRepository imageRepository;
	
	@Autowired
	private PropertyService propertyService;
	
	@GetMapping("/image/{imageName}")
	public ResponseEntity<?> downloadImage(@PathVariable String imageName){
		
		try {
			byte[] arr=propertyService.getImage(imageName);
	        return ResponseEntity.status(HttpStatus.OK)
	                .contentType(MediaType.valueOf("image/png"))
	                .body(arr);
		}catch(Exception e) {
			return ResponseEntity.notFound().build();
		}
		
    }
	
}
