package com.avcoe;

public class Faculty {
	private int id;
	private String name;
	private String Department;
	private String email;
	private int salary;
	
	public Faculty() {
		super();
		this.id = id;
		this.name = name;
		this.Department = Department;
		this.email = email;
		this.salary = salary;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartment() {
		return Department;
	}

	public void setDepartment(String department) {
		Department = department;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Faculty [id=" + id + ", name=" + name + ", Department=" + Department + ", email=" + email + ", salary="
				+ salary + "]";
	}
	
}
