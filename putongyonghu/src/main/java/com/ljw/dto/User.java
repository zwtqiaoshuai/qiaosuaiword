package com.ljw.dto;

public class User {
	
	//吕春鹏
	private Integer user_id;
	private String user_name;
	private String user_zh;
	private String user_mm;
	private Integer user_role;
	private String user_sex;
	private String user_card;
	private String user_age;
	private String user_address;
	private String user_phone;
	private String user_time;
	private String user_yu;
	private String user_zhuangtai;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_zh() {
		return user_zh;
	}
	public void setUser_zh(String user_zh) {
		this.user_zh = user_zh;
	}
	public String getUser_mm() {
		return user_mm;
	}
	public void setUser_mm(String user_mm) {
		this.user_mm = user_mm;
	}
	public Integer getUser_role() {
		return user_role;
	}
	public void setUser_role(Integer user_role) {
		this.user_role = user_role;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_card() {
		return user_card;
	}
	public void setUser_card(String user_card) {
		this.user_card = user_card;
	}
	public String getUser_age() {
		return user_age;
	}
	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_time() {
		return user_time;
	}
	public void setUser_time(String user_time) {
		this.user_time = user_time;
	}
	public String getUser_yu() {
		return user_yu;
	}
	public void setUser_yu(String user_yu) {
		this.user_yu = user_yu;
	}
	public String getUser_zhuangtai() {
		return user_zhuangtai;
	}
	public void setUser_zhuangtai(String user_zhuangtai) {
		this.user_zhuangtai = user_zhuangtai;
	}
	public User(Integer user_id, String user_name, String user_zh, String user_mm, Integer user_role, String user_sex,
			String user_card, String user_age, String user_address, String user_phone, String user_time, String user_yu,
			String user_zhuangtai) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_zh = user_zh;
		this.user_mm = user_mm;
		this.user_role = user_role;
		this.user_sex = user_sex;
		this.user_card = user_card;
		this.user_age = user_age;
		this.user_address = user_address;
		this.user_phone = user_phone;
		this.user_time = user_time;
		this.user_yu = user_yu;
		this.user_zhuangtai = user_zhuangtai;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name + ", user_zh=" + user_zh + ", user_mm=" + user_mm
				+ ", user_role=" + user_role + ", user_sex=" + user_sex + ", user_card=" + user_card + ", user_age="
				+ user_age + ", user_address=" + user_address + ", user_phone=" + user_phone + ", user_time="
				+ user_time + ", user_yu=" + user_yu + ", user_zhuangtai=" + user_zhuangtai + "]";
	}
	
	
	
}
