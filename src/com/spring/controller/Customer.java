package com.spring.controller;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Customer {
	
	@NotNull(message = "is Required@NotNull")
	@Size(min = 3, message = "min 3 character")
	private String firstName;
	
	@NotNull(message = "is Required@NotNull")
	@Size(min = 1, message = "is required@Size")
	private String lastName;
	
	@Min(value = 0, message = "min 0 ")
	@Max(value = 10, message = "max 10")
	private int freePasses;
	
	@Pattern(regexp = "^[a-zA-Z0-9] {5}", message = "only 5 char/digits")
	private String pincode;
	
	

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public int getFreePasses() {
		return freePasses;
	}

	public void setFreePasses(int freePasses) {
		this.freePasses = freePasses;
	}

	@Override
	public String toString() {
		return "Customer [firstName=" + firstName + ", lastName=" + lastName + ", freePasses=" + freePasses + "]";
	}
	
	
	
	
	

}
