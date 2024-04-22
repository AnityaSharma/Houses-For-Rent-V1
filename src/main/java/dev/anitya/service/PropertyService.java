	package dev.anitya.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;

import dev.anitya.dto.RegisterPropertyRequest;
import dev.anitya.model.ContactDetails;
import dev.anitya.model.Property;
import dev.anitya.model.UserRegisteration;
import dev.anitya.repository.IPropertyRepo;
import dev.anitya.repository.UserRepository;
import jakarta.transaction.Transactional;

@Service
public class PropertyService {
	
	private final int PAGE_SIZE=10;
	
	@Autowired
	private IPropertyRepo iPropertyRepo;
	
	@Autowired
	private UserRepository userRepository;
	
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
	
	
}
