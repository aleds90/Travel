package com.travel.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.travel.model.Address;
import com.travel.model.Country;
import com.travel.model.User;

@Repository
@Transactional
public class CountryDAOImpl implements CountryDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public CountryDAOImpl(){super();}

	@Override
	public int add(Country country) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(country);
		return 0;
	}

	@Override
	public void delete(Country country) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(country);
	}

	@Override
	public void update(Country country) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(country);
	}

	@Override
	public List<Country> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Country");
		return (List<Country>) query.list();
	}

	@Override
	public Country getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Country WHERE id='"+id+"'");
		return (Country) query.uniqueResult();
	}
	

}
