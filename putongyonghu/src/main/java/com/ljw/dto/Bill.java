package com.ljw.dto;

public class Bill {
	
	private Integer bill_id;
	private String bill_name;
	private String bill_time;
	private String bill_sum;
	private Integer user_id;
	
	public Integer getBill_id() {
		return bill_id;
	}
	public void setBill_id(Integer bill_id) {
		this.bill_id = bill_id;
	}
	public String getBill_name() {
		return bill_name;
	}
	public void setBill_name(String bill_name) {
		this.bill_name = bill_name;
	}
	public String getBill_time() {
		return bill_time;
	}
	public void setBill_time(String bill_time) {
		this.bill_time = bill_time;
	}
	public String getBill_sum() {
		return bill_sum;
	}
	public void setBill_sum(String bill_sum) {
		this.bill_sum = bill_sum;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Bill(Integer bill_id, String bill_name, String bill_time, String bill_sum, Integer user_id) {
		super();
		this.bill_id = bill_id;
		this.bill_name = bill_name;
		this.bill_time = bill_time;
		this.bill_sum = bill_sum;
		this.user_id = user_id;
	}
	public Bill() {
		super();
	}
	@Override
	public String toString() {
		return "Bill [bill_id=" + bill_id + ", bill_name=" + bill_name + ", bill_time=" + bill_time + ", bill_sum="
				+ bill_sum + ", user_id=" + user_id + "]";
	}
	
	
	

}
