package com.demo.in.exception;

public class NoSuchCustomerException extends RuntimeException {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public NoSuchCustomerException() {
		
	}
	
	public NoSuchCustomerException(String msg) {
		super(msg);
	}
	

}
