package dev.anitya.tenantcontroller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dev.anitya.dto.Location;
import dev.anitya.dto.RegisterPropertyRequest;
import dev.anitya.model.Property;
import dev.anitya.model.UserRegisteration;
import dev.anitya.service.PropertyService;
import dev.anitya.service.UserService;
import jakarta.servlet.http.HttpSession;

@Controller
public class PropertyControler {
	
	@Autowired
	PropertyService propService;
	
	@Autowired
	UserService userService;
	
	String uploadsDir="C:\\Users\\hp\\Server-File-System";

	@RequestMapping("/propreg")
	public String registerProperty() {
		return "propreg";
	}
	
	@PostMapping("/submitProperty")
	public String saveProperty(@ModelAttribute("prop") RegisterPropertyRequest prop,
								@RequestParam("imageUrls") MultipartFile[] imageFile,
								HttpSession httpSession) {
		System.out.println("saveProperty");
		System.out.println("Address: "+prop.getPropertyName());
		System.out.println(prop.toString());
		Long userId=(Long)httpSession.getAttribute("id");
		System.out.println("PropertyControler.saveProperty()"+userId);
		UserRegisteration user=propService.getUserById(userId);
		Property p=propService.builder(prop);
		propService.setImage(p,imageFile);
		System.out.println(p.toString());
		p.setUser(user);
		boolean b=propService.saveProp(p);
		
		return "redirect:landlord";
	}
	
	@PostMapping("/find")
	public String showProperties(Map<String,Object> map,
			                     @ModelAttribute("location") Location location,
			                     @PageableDefault(page=0) Pageable pageable,
			                     HttpSession httpSession
			                     ) {
		Page<Property> page=propService.findAllByStateCity(location.getState().toLowerCase(),
														   location.getCity().toLowerCase(),
														   pageable.getPageNumber());
		List<Property> ls=page.getContent();
		if(ls.size()==0)return "nolistings";
		httpSession.setAttribute("state", location.getState().toLowerCase());
		httpSession.setAttribute("city", location.getCity().toLowerCase());
		map.put("propertyList", page);

		return "properties";
	}
	
	@GetMapping("/find")
	public String showProp(Map<String,Object> map,
						   @RequestParam("page") Integer page,
						   HttpSession httpSession) {
		Page<Property> pagee=propService.findAllByStateCity(httpSession.getAttribute("state").toString(),
				   											httpSession.getAttribute("city").toString(),
				   											page);
		map.put("propertyList", pagee);
		return "properties";
	}
	
	@GetMapping({"/mylist","/delete/mylist"})
	public String myList(Map<String, Object> map,
			             HttpSession httpSession) {
		List<Property> ls=propService.listMyProps((long)httpSession.getAttribute("id"));
		map.put("myList", ls);
		return "myprops";
	}
		
	@GetMapping("/viewProperty/{id}")
	public String viewProperty(@PathVariable long id,
								Map<String,Object> map) {
		System.out.println("PropertyControler.viewProperty()"+id);
		Property property=propService.getPropById(id);
		map.put("property", property);
		return "viewprop";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteProp(@PathVariable long id,
                              HttpSession httpSession) {
		Long userId=(long)httpSession.getAttribute("id");
		boolean flag=propService.deletePropertyByUser(userId,id);
		if(flag) {
			System.out.println("HEREHERE");
			return "redirect:mylist";
		}else
			return "error";
	}
	
	@GetMapping("/edit/{id}")
	public String editProp(@PathVariable long id,
							Map<String, Object> map,
            				HttpSession httpSession) {
		Long userId=(long)httpSession.getAttribute("id");
		boolean flag=userService.isAuthorized(userId,id);
		if(flag) {
			return "editpage";
		}else
			return "error";
	}
	
}
