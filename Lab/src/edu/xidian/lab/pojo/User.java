package edu.xidian.lab.pojo;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;
/**
 * UserBean (id ,username, status, department, intime)
 * create by ybl 2017/10/13
 * to display the user infromation
 * @author Administrator
 *
 */
@Alias("user")
public class User {
	@Override
	public String toString() {
		return "User [id=" + id + ", number=" + number + ", username=" + username + ", status=" + status
				+ ", department=" + department + ", intime=" + intime + "]";
	}

	private Integer id;       //�û�id
	
	private String number;   //ѧ�Ż��߹��ʺ�
	
	private String username;  //�û���
	
	private String status;  //�û�����
	
	private String department; //ѧԺ
	
	private String office;//��ݵص�

	private String limit1;//�������1
	
	private String limit2;//�������2
	
	private String limit3;//�������3
	
	private String cash; //�Ƿ�Ѻ��
	
	@DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
	private Date intime;      //���ʱ��
	
//	private Date outtime;    //����ʱ��
	
//	private Integer spantime; //ʱ����

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public Date getIntime() {
		return intime;
	}

	public void setIntime(Date intime) {
		this.intime = intime;
	}

	public String getOffice() {
		return office;
	}

	public void setOffice(String office) {
		this.office = office;
	}

	public String getLimit1() {
		return limit1;
	}

	public void setLimit1(String limit1) {
		this.limit1 = limit1;
	}

	public String getLimit2() {
		return limit2;
	}

	public void setLimit2(String limit2) {
		this.limit2 = limit2;
	}

	public String getLimit3() {
		return limit3;
	}

	public void setLimit3(String limit3) {
		this.limit3 = limit3;
	}

	public String getCash() {
		return cash;
	}

	public void setCash(String cash) {
		this.cash = cash;
	}

//	public Date getOuttime() {
//		return outtime;
//	}
//
//	public void setOuttime(Date outtime) {
//		this.outtime = outtime;
//	}
//
//	public Integer getSpantime() {
//		return spantime;
//	}
//
//	public void setSpantime(Integer spantime) {
//		this.spantime = spantime;
//	}
//	
    

}
