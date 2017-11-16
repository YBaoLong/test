package edu.xidian.lab.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.xidian.lab.pojo.Admin;
import edu.xidian.lab.util.PageBean;

public interface AdminMapper {
	
	public Admin findAdminById(Integer id);  //����admin
	
	public Admin findAdminByName(String username); //�����û��������û�
	
	public Integer findAdminCount(PageBean<Admin> page); //�������й���Ա����
	
	public List<Admin> findByPage(PageBean<Admin> page);   //��ѯ�����û�;
	
	public void updateAdmin(Admin admin); //����admin
	
	public void delAdminById(Integer id);  //ɾ��admin
	
	public void addAdmin(Admin admin);   //����admin
	
	public Admin adminLogin(@Param("username")String username, @Param("password")String password);
	
}
