package vn.dev.greenmobilek.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_contact")
public class Contact extends BaseModel {

	@Column(name = "first_name", length = 60, nullable = false)
	private String firstName;

	@Column(name = "lastName", length = 60, nullable = false)
	private String lastName;

	@Column(name = "email", length = 120, nullable = true)
	private String email;

	@Column(name = "request_type", length = 120, nullable = true)
	private String requestType;

	@Column(name = "messasge", length = 120, nullable = true)
	private String message;

	@Column(name = "description", length = 120, nullable = true)
	private String description;

	@Column(name = "mobile", length = 20, nullable = true)
	private String mobile;

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRequestType() {
		return requestType;
	}

	public void setRequestType(String requestType) {
		this.requestType = requestType;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Contact(Integer id, Integer createBy, Integer updateBy, Date createDate, Date updateDate, Boolean status,
			String firstName, String lastName, String email, String requestType, String message, String description,
			String mobile) {
		super(id, createBy, updateBy, createDate, updateDate, status);
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.requestType = requestType;
		this.message = message;
		this.description = description;
		this.mobile = mobile;
	}

	public Contact() {
	}

}
