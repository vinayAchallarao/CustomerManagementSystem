package com.demo.in.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.in.entity.Customer;
import com.demo.in.service.CustomerService;

@Controller
@RequestMapping(value = "customer")
public class CustomerController {

	private CustomerService customerService;
//hello
	@Autowired
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}

	/*
	 * url : http://localhost:8080/customer/saveCustomer
	 */

	@ModelAttribute("cities")
	public void getCities(Model model) {
		List<String> cities = new ArrayList<String>();
		cities.add("Vijayawada");
		cities.add("Kodad");
		cities.add("Pune");
		model.addAttribute("cities", cities);

	}

	@GetMapping(value = "/saveCustomer")
	public String getCustomerRegistrationPage(Model model) {

		model.addAttribute("customer", new Customer());
		return "registration";

	}

	@PostMapping(value = "/saveCustomer")
	public ModelAndView postCustomerRegistrationPage(@Valid @ModelAttribute Customer customer,
			BindingResult bindingResult) {

		/*
		 * Customer customer=new Customer(); customer.setCname("Prudhvi");
		 * customer.setCmobile("9242942942"); customer.setCcity("Hyderabad);
		 */

		if (bindingResult.hasErrors()) {
			ModelAndView mav = new ModelAndView("registration");
			// mav.addObject("customer", customer);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("registration");
			Customer savedCustomer = customerService.saveCustomer(customer);
			mav.addObject("savedcustomer", savedCustomer);
			return mav;
		}

	}

	@GetMapping(value = "/singleCustomer")
	public ModelAndView getSinglePage() {
		ModelAndView mav = new ModelAndView("singlecustomer");
		return mav;

	}

	@PostMapping(value = "/singleCustomer")
	public ModelAndView postSinglePage(@RequestParam Integer cid) {
		Customer customer = customerService.getCustomerById(cid);
		ModelAndView mav = new ModelAndView("singlecustomer");
		mav.addObject("customer", customer);
		return mav;

	}

	@GetMapping(value = "/getAllCustomers")
	public ModelAndView getAllCustomers() {
		List<Customer> allCustomers = customerService.getAllCustomers();
		ModelAndView mav = new ModelAndView("allcustomers");
		mav.addObject("customers", allCustomers);
		return mav;
	}

	@GetMapping(value = "/deleteCustomer")
	public ModelAndView getDeleteCustomer() {
		ModelAndView mav = new ModelAndView("deletecustomer");
		return mav;
	}

	@PostMapping(value = "/deleteCustomer")
	public ModelAndView postDeleteCustomer(@RequestParam Integer cid) {
		ModelAndView mav = new ModelAndView("deletecustomer");
		Customer customer = customerService.getCustomerById(cid);
		if (customer != null) {
			customerService.deleteCustomer(cid);
			mav.addObject("msg", "Customer with ID:" + cid + " Deleted Successfully!");
		} else {
			mav.addObject("msg", "Sorry, Customer with ID:" + cid + " Not Availale!");
		}

		return mav;
	}

	@GetMapping(value = "/updateCustomer/{cid}")
	public ModelAndView getUpdateCustomer(@PathVariable Integer cid, HttpSession session) {
		Customer customer = customerService.getCustomerById(cid);
		ModelAndView mav = new ModelAndView("updatecustomer");
		mav.addObject("customer", customer);
		session.setAttribute("cid", cid);
		return mav;
	}

	@PostMapping(value = "/updateCustomer")
	public ModelAndView postUpdateCustomer(@ModelAttribute Customer customer, HttpSession session) {
		Integer cid = (Integer) session.getAttribute("cid");

		customerService.updateCustomer(cid, customer);

		List<Customer> allCustomers = customerService.getAllCustomers();
		ModelAndView mav = new ModelAndView("allcustomers");
		mav.addObject("customers", allCustomers);
		return mav;
	}

}
