package com.ticket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ticket.entity.Ticket;
import com.ticket.service.TicketService;

@Controller
@RequestMapping("/tickets")
public class TicketController {

	// inject ticket service
	@Autowired
	private TicketService ticketService;

	@GetMapping("/list")
	public String listTickets(Model model) {
		// get tickets from dao and add them to the model
		List<Ticket> tickets = ticketService.getTickets();
		model.addAttribute("tickets", tickets);
		return "list-tickets";
	}

	@GetMapping("/formAddTicket")
	public String formAddTicket(Model model) {
		// use model attribute to bind form data
		Ticket ticket = new Ticket();
		model.addAttribute("ticket", ticket);
		return "ticket-form";
	}

	@PostMapping("/saveTicket")
	public String saveTicket(@ModelAttribute("ticket") Ticket ticket) {

		// save the ticket through the service
		ticketService.saveTicket(ticket);

		return "redirect:/tickets/list";
	}

	@GetMapping("/formUpdateTicket")
	public String formUpdateTicket(@RequestParam("ticketId") int id, Model model) {
		// get ticket as model attribute to populate the form
		Ticket ticket = ticketService.getTicket(id);
		model.addAttribute("ticket", ticket);
		return "ticket-form";
	}

	@GetMapping("/delete")
	public String deleteTicket(@RequestParam("ticketId") int id) {

		// delete the ticket
		ticketService.deleteTicket(id);

		return "redirect:/tickets/list";
	}

	@GetMapping("/search")
	public String searchTickets(@RequestParam("searchEvent") String searchEvent, Model model) {
		// search tickets from the service
		List<Ticket> tickets = ticketService.searchTickets(searchEvent);
		if(tickets == null || tickets.size() == 0) {
			return "no-results";
		}
		model.addAttribute("tickets", tickets);
		return "list-tickets";
	}

}
