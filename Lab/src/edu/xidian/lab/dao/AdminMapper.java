package edu.xidian.lab.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.xidian.lab.pojo.Admin;
import edu.xidian.lab.util.PageBean;

public interface AdminMapper {
	
	public Admin findAdminById(Integer id);  //查找admin
	
	public Admin findAdminByName(String username); //根据用户名查找用户
	
	public Integer findAdminCount(PageBean<Admin> page); //查找所有管理员数量
	
	public List<Admin> findByPage(PageBean<Admin> page);   //查询所有用户;
	
	public void updateAdmin(Admin admin); //更新admin
	
	public void delAdminById(Integer id);  //删除admin
	
	public void addAdmin(Admin admin);   //增加admin
	
	public Admin adminLogin(@Param("username")String username, @Param("password")String password);
	
}
