package com.ticket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ticket.dao.TicketDAO;
import com.ticket.entity.Ticket;

@Controller
@RequestMapping("/tickets")
public class TicketController {
	
	// Inject ticket dao
	@Autowired
	private TicketDAO ticketDAO;
	
	@RequestMapping("/list")
	public String listTickets(Model model) {
		
		// get tickets from dao and add them to the model
		List<Ticket> tickets = ticketDAO.getTickets();
		model.addAttribute("tickets", tickets);
		return "list-tickets";
	}
}
