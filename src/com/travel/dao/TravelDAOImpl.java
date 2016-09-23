package com.travel.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.travel.model.Address;
import com.travel.model.Travel;
import com.travel.model.User;

@Repository
@Transactional
public class TravelDAOImpl implements TravelDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public TravelDAOImpl(){super();}


	@Override
	public int add(Travel travel) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(travel);
		return 0;
	}

	@Override
	public void delete(Travel travel) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(travel);
		
	}

	@Override
	public void update(Travel travel) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(travel);
		
	}

	@Override
	public List<Travel> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Travel");
		return (List<Travel>) query.list();
	}

	@Override
	public Travel getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Travel WHERE id='"+id+"'");
		return (Travel) query.uniqueResult();
	}

}
