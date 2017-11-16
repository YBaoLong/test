package edu.xidian.lab.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.xidian.lab.pojo.Admin;
import edu.xidian.lab.util.PageBean;

public interface AdminService {
	
	public Admin findAdminById(Integer id);
	
	public Admin findAdminByName(String username);
	
    public Integer findAdminCount(PageBean<Admin> page); //�������й���Ա����
	
	public List<Admin> findByPage(PageBean<Admin> page);    //��ҳ���ҹ���Ա;
	
	public void updateAdmin(Admin admin);
	
	public void delAdminBuId(Integer id);
	
	public void addAdmin(Admin admin);
	
	public void adminRegister(Admin admin);
	
	public Admin adminLogin(@Param("username") String username, @Param("password") String password);

}
