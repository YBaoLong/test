package edu.xidian.lab.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.xidian.lab.dao.UserMapper;
import edu.xidian.lab.pojo.User;
import edu.xidian.lab.util.PageBean;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User findUserById(Integer id) {
		User user = userMapper.findUserById(id);
		// TODO Auto-generated method stub
		return user;
	}

	@Override
	public List<User> findUserByNumber(String number) {
		// TODO Auto-generated method stub
		List<User> user = userMapper.findUserByNumber(number);
		return user;
	}

	@Override
	public List<User> findUserByName(String username) {
		// TODO Auto-generated method stub
		List<User> user = userMapper.findUserByName(username);
		return user;
	}

	@Override
	public Integer findUserCount(PageBean<User> page) {
		// TODO Auto-generated method stub
		int count = userMapper.findUserCount(page);
		return count;
	}

	@Override
	public List<User> findByPage(PageBean<User> page) {
		// TODO Auto-generated method stub
		List<User> userList = userMapper.findByPage(page);
		return userList;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userMapper.updateUser(user);
		
	}

	@Override
	public void delUserById(Integer id) {
		// TODO Auto-generated method stub
		userMapper.delUserById(id);
		
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.addUser(user);
		
	}

	@Override
	public List<User> findUserByOffice(String office) {
		List<User> user = userMapper.findUserByOffice(office);
		return user;
	}

}
