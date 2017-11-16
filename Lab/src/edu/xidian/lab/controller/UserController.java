package edu.xidian.lab.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.xidian.lab.pojo.User;
import edu.xidian.lab.service.UserService;
import edu.xidian.lab.util.PageBean;
/**
 * create by ybl 2017/10/20
 * @author Administrator
 *
 */
@Controller
@Scope("prototype")
@RequestMapping("/user")
public class UserController {
	
	@Autowired 
	private UserService userService;

	@RequestMapping("/inform")
	  public String infromation(Model model, PageBean<User> page) throws Exception{
		  
		  
		  if(page.getCurrentPage() == 0){
		      page.setCurrentPage(1);
		   }
	       
		   page.setPageSize(15);
	       //设置起始查询记录数
	       page.setStart((page.getCurrentPage() -1) * page.getPageSize());
		  
	       //查找user
	       List<User> userList = userService.findByPage(page);
	       page.setList(userList);
	      
	       //查找数量
	       int count = userService.findUserCount(page);
		   page.setAllRow(count);  //总记录数
		   
		   model.addAttribute("pageBean", page);
		   
		   return "student/user_inform";
		 
	  }
	
	@RequestMapping("/tofind")
	public String tofindUser(){
		return "student/finduser";
	}
	
	@RequestMapping("/findbynum")
	public String findUserByNum(Model model, String number) throws Exception{
		//String number = request.getParameter("u_number");
		List<User> userList = userService.findUserByNumber(number);
		PageBean<User> pageBean = new PageBean<User>();
		pageBean.setList(userList);
		model.addAttribute("pageBean", pageBean);
		
		return "student/finduser";
		
	}
	
	@RequestMapping("/findbyoff")
	public String findUserByOff(Model model, String office) throws Exception{
		//String office = request.getParameter("office");
		List<User> userList = userService.findUserByOffice(office);
		PageBean<User> pageBean = new PageBean<User>();
		pageBean.setList(userList);
		model.addAttribute("pageBean", pageBean);
		
		return "student/finduser";
		
	}
    
	@RequestMapping("detail")
	@ResponseBody
	public User detail(Model model ,int id) throws Exception{
		User user = userService.findUserById(id);
		return user;
	}
	
	@RequestMapping("update")
	public String updateUser(@RequestBody User user) throws Exception{
     	userService.updateUser(user);
		return "student/finduser";
	}
	
	@RequestMapping("delUser")
	public String delUser(int id) throws Exception{
		userService.delUserById(id);
		return "student/finduser";
	}

}
