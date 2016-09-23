package com.travel.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.travel.model.Address;
import com.travel.model.TravelTag;
import com.travel.model.User;

@Repository
@Transactional
public class TravelTagDAOImpl implements TravelTagDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public TravelTagDAOImpl(){super();}

	@Override
	public int add(TravelTag travelTag) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(travelTag);
		return 0;
	}

	@Override
	public void delete(TravelTag travelTag) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(travelTag);
	}

	@Override
	public void update(TravelTag travelTag) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(travelTag);
	}

	@Override
	public List<TravelTag> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM TravelTag");
		return (List<TravelTag>) query.list();
	}

	@Override
	public TravelTag getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM TravelTag WHERE id='"+id+"'");
		return (TravelTag) query.uniqueResult();
	}

}
