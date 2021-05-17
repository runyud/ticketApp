package com.ticket.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ticket.entity.Ticket;

@Repository
public class TicketDAOImpl implements TicketDAO {

	// Injecting the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Ticket> getTickets() {
		
		Session session = sessionFactory.getCurrentSession();
		
		// create the query to get the tickets
		Query<Ticket> query = session.createQuery("from Ticket", Ticket.class);
		List<Ticket> tickets = query.getResultList();
		
		return tickets;
	}

}
