package edu.xidian.lab.pojo;

import org.apache.ibatis.type.Alias;

/**
 * 
 * Create by ybl 2017/10/13
 * @author Administrator
 *
 */
@Alias("admin")
public class Admin {
	
	private Integer id;     //����Աid
	
	private String username; //����Ա�û���
	
	private String password; //����Ա����
	
	private String authority; //����ԱȨ��

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

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

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", password=" + password + "]";
	}
	
	

}
