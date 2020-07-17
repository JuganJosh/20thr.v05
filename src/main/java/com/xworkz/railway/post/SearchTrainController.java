package com.xworkz.railway.post;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Component
@RequestMapping("/")
public class SearchTrainController {

	public SearchTrainController() {
		System.out.println("Created \t" + this.getClass().getSimpleName());
	}

	private Map<String, String> map;

	@PostConstruct
	public void initializeMap() {
		System.out.println("Invoked SearchTrain");
		map = new LinkedHashMap<String, String>();
		map.put("Mysore", "Karnatak Express");
		map.put("Hubli", "Janakabadi Express");
		map.put("Balguam", "Rani Cennema Superfast Express");
		map.put("Mumbai", "Hamsafar Express");
		map.put("Bagalkot", "GolGumbaz Express");
	}

	@RequestMapping(value = "/train.odc", method = RequestMethod.POST)
	public String searchTrain(@RequestParam String name, Model model) {

		System.out.println("Name Entered : " + name);
		if (name != null) {
			System.out.println("Name is not null");
			if (map.containsKey(name)) {
				model.addAttribute("name", "Result found : City name is : " + name);
				model.addAttribute("trainName", "Train name is : " + map.get(name));
			}
		}else{
			System.out.println("Name is null");
			model.addAttribute("result", "You have not Entered name, So result is not found");
		}

		return "searchtrain.jsp";
	}

}
