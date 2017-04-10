package com.techelevator.city.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.techelevator.city.model.ItineraryDAO;
import com.techelevator.city.model.LandmarkDAO;
import com.techelevator.city.model.UserDAO;

@Transactional
@Controller
@SessionAttributes("currentUser")
public class ItineraryController {

	private UserDAO userDAO;
	private LandmarkDAO landDAO;
	private ItineraryDAO itineraryDAO;
		
		@Autowired
		public ItineraryController(UserDAO userDAO, LandmarkDAO landDAO, ItineraryDAO itineraryDAO) {
			this.userDAO = userDAO;
			this.landDAO = landDAO;
			this.itineraryDAO = itineraryDAO;
		}
		
		@RequestMapping(path="/createItinerary", method=RequestMethod.GET)
		public String displayCreateItineraryPage() {
			return "createItinerary";
		}
		
		@RequestMapping(path="/manageItinerary", method=RequestMethod.GET)
		public String displayManageItineraryPage(@RequestParam Optional<Integer> id, ModelMap model) {
			if(! id.isPresent()){
				String userName = (String) model.get("currentUser");
				model.put("itineraries", itineraryDAO.findItineraryByUser(userName));
				return "manageItinerary";
			}
			model.put("itinerary", itineraryDAO.findItineraryById(id.get()));
			model.put("landmarks", landDAO.getLandmarksByItineraryId(id.get()));
			return "itineraryPage";
		}
}
