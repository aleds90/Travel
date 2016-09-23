package com.travel.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.travel.model.Address;
import com.travel.model.Category;
import com.travel.model.User;

@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public CategoryDAOImpl(){super();}


	@Override
	public int add(Category category) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(category);
		return 0;
	}

	@Override
	public void delete(Category category) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(category);
	}

	@Override
	public void update(Category category) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(category);
	}

	@Override
	public List<Category> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Category");
		return (List<Category>) query.list();
	}

	@Override
	public Category getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Category WHERE id='"+id+"'");
		return (Category) query.uniqueResult();
	}

}
