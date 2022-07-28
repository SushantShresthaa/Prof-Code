package com.cubic.dao.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;

@Entity
@Table(name="signup_tbl")
public class SignupEntity {
	    private int sid;
		public String username;
		private String password;
		private String email;
		private String mobile;
		private String gender;
		private String address;
		private String image;
		private String role;
		
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		public int getSid() {
			return sid;
		}

		public void setSid(int sid) {
			this.sid = sid;
		}


		public String getImage() {
			return image;
		}

		public void setImage(String image) {
			this.image = image;
		}

		@Column(name="username")
		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}
		
		@Column(name="role",columnDefinition="varchar(30) default 'CUSTOMER'",length = 30)
		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}

		@Override
		public String toString() {
			return "Signup [sid=" + sid + ", username=" + username + ", password=" + password + ", email=" + email
					+ ", mobile=" + mobile + ", gender=" + gender + ", address=" + address + ", image=" + image + "]";
		}
		
		
		

	}

