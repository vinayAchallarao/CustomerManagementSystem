package com.demo.in.service;

import java.util.List;

import com.demo.in.entity.Customer;

public interface CustomerService {

	public Customer saveCustomer(Customer customer);
	public Customer getCustomerById(Integer cid);
	public void deleteCustomer(Integer cid);
	public List<Customer> getAllCustomers();
	public Customer updateCustomer(Integer cid,Customer customer);
	
}
