package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface AddressDAO {
	
	 public int add(Address address);
	 public void delete(Address address);
	 public void update(Address address);
	 public List<Address> getAll();
	 public Address getById(int id);
}
