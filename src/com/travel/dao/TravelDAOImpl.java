package com.travel.dao;

import java.math.BigInteger;
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

	@SuppressWarnings("unchecked")
	@Override
	public List<Travel> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Travel").setMaxResults(25);
		return (List<Travel>) query.list();
	}

	@Override
	public Travel getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Travel WHERE id='"+id+"'");
		return (Travel) query.uniqueResult();
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Integer> getTravelsIDByProperties(String place, String budget, String category) {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = null;
		if(!category.equals("All")){
		queryString = "SELECT DISTINCT travel.id FROM travel left join stage on travel.id = stage.travel left join city on stage.city = city.id"
				+ " left join country on city.CountryCode = country.Code left join target on target.id = travel.target left join category on category.id = travel.category "
				+ "where (city.name like '"+place+"%' or country.Name like '"+place+"%' or country.Continent like '"+place+"%') AND (target.maxium_budget < "+budget+" ) AND (category.slug='"+category+"')";
		}else{
		queryString = "SELECT DISTINCT travel.id FROM travel left join stage on travel.id = stage.travel left join city on stage.city = city.id"
				+ " left join country on city.CountryCode = country.Code left join target on target.id = travel.target left join category on category.id = travel.category "
				+ "where (city.name like '"+place+"%' or country.Name like '"+place+"%' or country.Continent like '"+place+"%' ) AND (target.maxium_budget < "+budget+" )";
		}
		Query query = session.createSQLQuery(queryString);

		return (List<Integer>) query.list();
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Travel> getByUser(User user) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Travel WHERE user.id='"+user.getId()+"'");
		return (List<Travel>) query.list();
	}


	@Override
	public int getCountTravelsIDByProperties(String place, String budget, String category) {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = null;
		if(!category.equals("All")){
		queryString = "SELECT COUNT(*) FROM travel left join stage on travel.id = stage.travel left join city on stage.city = city.id"
				+ " left join country on city.CountryCode = country.Code left join target on target.id = travel.target left join category on category.id = travel.category "
				+ "where (city.name like '"+place+"%' or country.Name like '"+place+"%' or country.Continent like '"+place+"%' ) AND (target.maxium_budget < "+budget+" ) AND (category.slug='"+category+"')";
		}else{
		queryString = "SELECT COUNT(*) FROM travel left join stage on travel.id = stage.travel left join city on stage.city = city.id"
				+ " left join country on city.CountryCode = country.Code left join target on target.id = travel.target left join category on category.id = travel.category "
				+ "where (city.name like '"+place+"%' or country.Name like '"+place+"%' or country.Continent like '"+place+"%') AND (target.maxium_budget < "+budget+" )";
		}
		Query query = session.createSQLQuery(queryString);

		return ((BigInteger)query.uniqueResult()).intValue();
	}

}
