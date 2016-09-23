package com.travel.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.travel.model.Address;
import com.travel.model.User;

@Repository
@Transactional
public class AddressDAOImpl implements AddressDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public AddressDAOImpl(){super();}

	@Override
	public int add(Address address) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(address);
		return 0;
	}

	@Override
	public void delete(Address address) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(address);
		
	}

	@Override
	public void update(Address address) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(address);
	}

	@Override
	public List<Address> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Address");
		return (List<Address>) query.list();
	}

	@Override
	public Address getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Address WHERE id='"+id+"'");
		return (Address) query.uniqueResult();
	}

}
