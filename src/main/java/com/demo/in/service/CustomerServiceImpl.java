package com.demo.in.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.in.entity.Customer;
import com.demo.in.exception.NoSuchCustomerException;
import com.demo.in.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{


	private CustomerRepository customerRepository;

	@Autowired
	public void setCustomerRepository(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}
	
	@Override
	public Customer saveCustomer(Customer customer) {
		
		return customerRepository.save(customer);
	}

	@Override
	public Customer getCustomerById(Integer cid) {
		Optional<Customer> opt= customerRepository.findById(cid);
		
		return opt.orElseThrow(()->new NoSuchCustomerException("Customer with Given ID:"+cid+" Not Available!"));
		
		
	}

	@Override
	public void deleteCustomer(Integer cid) {
		Customer customer=getCustomerById(cid);
		if(customer!=null) {
			customerRepository.deleteById(cid);
		}
		
		
	}

	@Override
	public List<Customer> getAllCustomers() {
		   return customerRepository.findAll();
	}

	@Override
	public Customer updateCustomer(Integer cid,Customer customer) {
		
		Customer existingCustomer=getCustomerById(cid);
		existingCustomer.setCcity(customer.getCcity());
		existingCustomer.setCmobile(customer.getCmobile());
		existingCustomer.setCname(customer.getCname());
		
		return customerRepository.save(existingCustomer);
		
	}

	
	
}
