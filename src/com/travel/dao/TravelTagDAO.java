package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface TravelTagDAO {
	 public int add(TravelTag travelTag);
	 public void delete(TravelTag travelTag);
	 public void update(TravelTag travelTag);
	 public List<TravelTag> getAll();
	 public TravelTag getById(int id);
}
