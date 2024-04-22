package dev.anitya.tenantcontroller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dev.anitya.dto.UserLogin;
import dev.anitya.model.UserRegisteration;
import dev.anitya.service.UserService;
import jakarta.servlet.http.HttpSession;

@Controller
public class WelcomeController {
	
	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public String welcomeTenant(){
		return "welcome";
	}
	
	@GetMapping("/login")
	public String doLogin(){
		return "login";
	}
	
	@RequestMapping("/signup")
	public String doSignup(){
		return "signup";
	}
	
	@RequestMapping("/register")
	public String userRegisteration( Map<String, Object> map,
			                         @ModelAttribute("user") UserRegisteration user) {
		if(userService.isAvailable(user.geteMail())) {
			return "alreadyregistered";
		}
		boolean b=userService.addUser(user);
		if(!b)
			return "error";
		
		return "redirect:login";
	}
	
	@RequestMapping("/tenant")
	public String homePage(){
		return "tenant";
	}
	
	@RequestMapping("/landlord")
	public String switchToLandlord(){
		return "landlord";
	}
	
	@PostMapping("/login")
	public String dologin(@ModelAttribute("user") UserLogin user,HttpSession httpSession) {
		if(!userService.isAvailable(user.geteMail())) {
			return "usernotregistered";
		}
		boolean b=userService.authenticate(user);
		System.out.println("WelcomeController.dologin()"+b);
		
		if(b) {
			httpSession.setAttribute("id", userService.getUserByEmail(user.geteMail()).getId());
			return "tenant";
		}else
			return "incorrectpassword";
	}
	
}
