package edu.xidian.lab.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import edu.xidian.lab.dao.AdminMapper;
import edu.xidian.lab.pojo.Admin;
import edu.xidian.lab.util.PageBean;

@Service


public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public Admin findAdminById(Integer id) {
		// TODO Auto-generated method stub
		Admin admin = adminMapper.findAdminById(id);
		return admin;
	}

	@Override
	public Admin findAdminByName(String username) {
		// TODO Auto-generated method stub
		Admin admin = adminMapper.findAdminByName(username);
		return admin;
	}
    
	@Override
	public Integer findAdminCount(PageBean<Admin> page) {
		// TODO Auto-generated method stub
		int count = adminMapper.findAdminCount(page); //总的记录条数
		return count;
	}
    
	// 返回每页记录数
	@Override
	public List<Admin> findByPage(PageBean<Admin> page) {
		// TODO Auto-generated method stub
		List<Admin> list = (List<Admin>) adminMapper.findByPage(page);
		return list;
	}
	
	@Override
	public void updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		adminMapper.updateAdmin(admin);
		
	}

	@Override
	public void delAdminBuId(Integer id) {
		// TODO Auto-generated method stub
		adminMapper.delAdminById(id);
		
	}

	@Override
	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		adminMapper.addAdmin(admin);
		
	}

	@Override
	public Admin adminLogin(String username, String password) {
		// TODO Auto-generated method stub
		Admin admin = adminMapper.adminLogin(username, password);
		return admin;
	}

	@Override
	public void adminRegister(Admin admin) {
		// TODO Auto-generated method stub
		adminMapper.addAdmin(admin);
		
	}

}
