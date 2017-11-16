package edu.xidian.lab.dao;

import java.util.List;
import edu.xidian.lab.pojo.User;
import edu.xidian.lab.util.PageBean;

public interface UserMapper {

	public User findUserById(Integer id);  //id查找用户
	
	public List<User> findUserByNumber(String number); //学号或者工资号查找用户
	
	public List<User> findUserByName(String username);  //根据用户名查找用户
	
	public List<User> findUserByOffice(String office);  // 根据入馆地点查找用户
	
	public Integer findUserCount(PageBean<User> page); //查找所有管理员数量
	
	public List<User> findByPage(PageBean<User> page);   //按页查找用户;
	
	public void updateUser(User user); //更新user
	
	public void delUserById(Integer id);  //删除user
	
	public void addUser(User user);   //增加user
	

}
