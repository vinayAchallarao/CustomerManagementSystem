package com.demo.in.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
//import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;





@Entity
public class Customer {

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer cid;
	public Customer(Integer cid, @NotEmpty(message = "Customer name cannot be empty") String cname,
			@NotEmpty(message = "Customer city cannot be empty") String ccity,
			@Pattern(regexp = "[789][0-9]{9}", message = "Please enter valid mobile number") String cmobile) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.ccity = ccity;
		this.cmobile = cmobile;
	}
	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", cname=" + cname + ", ccity=" + ccity + ", cmobile=" + cmobile + "]";
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCcity() {
		return ccity;
	}
	public void setCcity(String ccity) {
		this.ccity = ccity;
	}
	public String getCmobile() {
		return cmobile;
	}
	public void setCmobile(String cmobile) {
		this.cmobile = cmobile;
	}
	@Column
	@NotEmpty(message = "Customer name cannot be empty")
	private String cname;
	@Column
	@NotEmpty(message = "Customer city cannot be empty")
	private String ccity;
	@Column
	@Pattern(regexp = "[789][0-9]{9}",message ="Please enter valid mobile number" )
	private String cmobile;

}
