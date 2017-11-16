package edu.xidian.lab.dao;

import java.util.List;
import edu.xidian.lab.pojo.User;
import edu.xidian.lab.util.PageBean;

public interface UserMapper {

	public User findUserById(Integer id);  //id�����û�
	
	public List<User> findUserByNumber(String number); //ѧ�Ż��߹��ʺŲ����û�
	
	public List<User> findUserByName(String username);  //�����û��������û�
	
	public List<User> findUserByOffice(String office);  // ������ݵص�����û�
	
	public Integer findUserCount(PageBean<User> page); //�������й���Ա����
	
	public List<User> findByPage(PageBean<User> page);   //��ҳ�����û�;
	
	public void updateUser(User user); //����user
	
	public void delUserById(Integer id);  //ɾ��user
	
	public void addUser(User user);   //����user
	

}
