package com.travel.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.travel.model.Address;
import com.travel.model.Profile;
import com.travel.model.User;

@Repository
@Transactional
public class ProfileDAOImpl implements ProfileDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public ProfileDAOImpl(){super();}

	@Override
	public int add(Profile profile) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(profile);
		return 0;
	}

	@Override
	public void delete(Profile profile) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(profile);
		
	}

	@Override
	public void update(Profile profile) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(profile);
		
	}

	
	@Override
	public List<Profile> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Profile");
		return (List<Profile>) query.list();
	}

	@Override
	public Profile getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Profile WHERE id='"+id+"'");
		return (Profile) query.uniqueResult();
	}

}
