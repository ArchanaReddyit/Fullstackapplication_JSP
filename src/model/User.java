package model;

import java.time.LocalDate;

public class User{
	private String email;
	private String password;	
	private LocalDate date;
	
	public User(String email, String password) {
		this.email=email;
		this.password=password;
		// TODO Auto-generated constructor stub
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	
	
}