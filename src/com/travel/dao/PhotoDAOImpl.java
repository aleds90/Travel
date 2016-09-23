package com.travel.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.travel.model.Address;
import com.travel.model.Photo;
import com.travel.model.User;

@Repository
@Transactional
public class PhotoDAOImpl implements PhotoDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public PhotoDAOImpl(){super();}

	@Override
	public int add(Photo photo) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(photo);
		return 0;
	}

	@Override
	public void delete(Photo photo) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(photo);
		
	}

	@Override
	public void update(Photo photo) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(photo);
	}

	@Override
	public List<Photo> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Photo");
		return (List<Photo>) query.list();
	}

	@Override
	public Photo getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Photo WHERE id='"+id+"'");
		return (Photo) query.uniqueResult();
	}

}
