	package dev.anitya.service;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dev.anitya.dto.RegisterPropertyRequest;
import dev.anitya.model.ContactDetails;
import dev.anitya.model.Image;
import dev.anitya.model.Property;
import dev.anitya.model.UserRegisteration;
import dev.anitya.repository.IPropertyRepo;
import dev.anitya.repository.ImageRepository;
import dev.anitya.repository.UserRepository;
import jakarta.transaction.Transactional;

@Service
public class PropertyService {
	
	private final int PAGE_SIZE=10;
	
	@Autowired
	private IPropertyRepo iPropertyRepo;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ImageRepository imageRepo;
	
	private final String FOLDER="C:\\Users\\anity\\Server-File-System\\";
	
	@Transactional
	@Modifying
	public Long registerProp(RegisterPropertyRequest registerPropertyRequest) {
		
		Property property=getProperty(registerPropertyRequest);
		System.out.println(property);
		Property propertyWithId=iPropertyRepo.save(property);
		return propertyWithId.getId();
	}

	private Property getProperty(RegisterPropertyRequest registerPropertyRequest) {
		
		return Property.builder()
				.country(registerPropertyRequest.getCountry())
				.state(registerPropertyRequest.getState())
				.rooms(registerPropertyRequest.getRooms())
				.address(registerPropertyRequest.getAddress())
				.price(registerPropertyRequest.getPrice())
				.contactDetails(registerPropertyRequest.getContactDetails())
				.city(registerPropertyRequest.getCity())
				.build();
	}
	
	public Page<Property> findAllByStateCity(String state,String city,int page){
		Pageable pageable=PageRequest.of(page, PAGE_SIZE);
		
		Page<Property> pagee=iPropertyRepo.findByStateAndCity(state,city,pageable);
//		List<Property> ls=pagee.getContent();
		return pagee;
	}

	public Property builder(RegisterPropertyRequest prop) {
		Property p=new Property();
		p.setAddress(prop.getAddress());
		p.setCity(prop.getCity().toLowerCase());
		p.setCountry(prop.getCountry().toLowerCase());
		p.setState(prop.getState().toLowerCase());
		p.setRooms(prop.getRooms());
		p.setPrice(prop.getPrice());
		String emial=prop.getContactDetails().geteMail().toLowerCase();
		p.setContactDetails(new ContactDetails(emial,prop.getContactDetails().getPhoneNumber()));
		return p;
	}

	public boolean saveProp(Property p) {
		try{
			iPropertyRepo.save(p);
		}catch(Exception e){
			return false;
		}
		return true;
	}

	public UserRegisteration getUserById(Long userId) {
		
		Optional<UserRegisteration> op=userRepository.findById(userId);
		if(op.isPresent()) {
			return op.get();
		}
		return new UserRegisteration();
	}

	public Property getPropById(Long id) {
		return iPropertyRepo.getReferenceById(id);
	}
	
	public boolean setImage(Property property,MultipartFile[] files) {
		System.out.println("setImage");
		try {
			if(files.length!=0){
				List<Image> ls=new ArrayList<>();
				for(MultipartFile file:files) {
					Image image=Image.builder()
							.name(file.getOriginalFilename())
							.type(file.getContentType())
							.url(FOLDER+file.getOriginalFilename())
						    .build();
					ls.add(image);
					file.transferTo(new File(image.getUrl()));
				}
				property.setImage(ls);
			}
		}catch(Exception e) {
			return false;
		}
		return true;
	}
	
	public byte[] getImage(String fileName)throws Exception {
		Optional<Image> image= imageRepo.findByName(fileName);
		String path=image.get().getUrl();
		
		byte[] arr=Files.readAllBytes(new File(path).toPath());
		return arr;
	}

	public byte[] getImages(long id) throws Exception{
		Optional<Image> op=imageRepo.findById(id);
		String path=op.get().getUrl();
		System.out.println(path);
		byte[] arr=Files.readAllBytes(new File(path).toPath());
		return arr;
	}
	
	
}
