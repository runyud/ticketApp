package com.ticket.dao;

import java.util.List;

import com.ticket.entity.Ticket;

public interface TicketDAO {
	
	public List<Ticket> getTickets();
}
