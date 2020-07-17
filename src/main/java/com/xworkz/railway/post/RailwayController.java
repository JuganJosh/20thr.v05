package com.xworkz.railway.post;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Component
@RequestMapping("/")
public class RailwayController {

	public RailwayController() {
		System.out.println("Created " + this.getClass().getSimpleName());
	}

	@RequestMapping(value = "/book.odc", method = RequestMethod.POST)
	public String onBook(@RequestParam String name, @RequestParam int age, @RequestParam String address,
			@RequestParam String source, @RequestParam String destination, @RequestParam String date, Model model) {
		System.out.println("Invoked onBook");
		
		System.out.println("Name : "+name);
		System.out.println("Age : "+age);
		System.out.println("Address : "+address);
		System.out.println("Sources : "+source);
		System.out.println("Destination : "+destination);
		System.out.println("Date : "+date);
		
		model.addAttribute("name", name);	
		model.addAttribute("age"+ age);
		model.addAttribute("address"+address);
		model.addAttribute("source"+source);
		model.addAttribute("destination"+destination);
		model.addAttribute("date"+date);
		
		System.out.println("Sending Response to success.jsp");
		return "/success.jsp";
	}

}
