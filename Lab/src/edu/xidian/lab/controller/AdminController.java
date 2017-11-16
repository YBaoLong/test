package edu.xidian.lab.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.xidian.lab.pojo.Admin;
import edu.xidian.lab.pojo.User;
import edu.xidian.lab.service.AdminService;
import edu.xidian.lab.service.UserService;
import edu.xidian.lab.util.PageBean;

@Controller
@Scope("prototype")
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("/reg")
	public String register(){
		return "user/register";
	}
	
	@RequestMapping("index")
	public String login(){
		return "index";
	}
	
	@RequestMapping("/submit")
	public String adminLogin(@RequestParam String username, @RequestParam String password,@RequestParam String office) throws Exception{
		HttpSession session = request.getSession();
		Admin admin1 = adminService.adminLogin(username, password);
		Admin admin2 = adminService.findAdminByName(username);
		if(admin1 != null){
			Admin admin = new Admin();    //将信息存到admin session中
			admin.setUsername(username);
			admin.setPassword(password);
			admin.setAuthority(admin2.getAuthority());
			session.setAttribute("admin", admin);
			session.setAttribute("office", office);
			
			return "user/crashcard";
		}
		return "user/log_err";
	}
	
	@RequestMapping("/crash")
	public String carsh(){
		HttpSession session = request.getSession();
		session.setAttribute("user", null);
		return "user/crashcard";
	}
	
	 @RequestMapping("/firstpage")
	 public String firstpage(){
		 return "user/log_suc";
	 }
	  
	 @RequestMapping("/inform")
	  public String inform(Model model){
	  
	   HttpSession session = request.getSession();
//	    
//	         获取系统当前时间
//	   SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
//				     "yyyy-MM-dd HH:mm:ss");  
//	    
//	   String time = simpleDateFormat.format(currentTime).toString();
//	   session.setAttribute("time", time);
//	   Admin admin = (Admin)session.getAttribute("admin");
//	   String admin_username = admin.getUsername();
//	   String admin_password = admin.getPassword();
//	   model.addAttribute("admin", admin);
	   
	   String uid = request.getParameter("uid");
	   
	   if(uid != null && !("".equals(uid))){
		   SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
						     "yyyy-MM-dd HH:mm:ss"); 
		   Date currentTime = new java.util.Date();
		   String time = simpleDateFormat.format(currentTime).toString();
		   model.addAttribute("time", time);
		  
		   User user = new User();
		   //添加用户入馆时间
		   user.setIntime(currentTime);
		   //添加用户入馆地点
		   
		   user.setOffice((String)session.getAttribute("office"));
		   
		   String url="http://202.117.122.31/X?op=bor-info&bor-id="+ uid +"&CON_LAG=chi&user_name=XX&user_password=666666";
		   //请求服务
		   String str = HttpGet.doGet(url);
		  
		   //获取限制1
		    int beginIndex5 = str.indexOf("<z303-delinq-n-1>") + "<z303-delinq-n-1>".length();
		    int endIndex5 = str.indexOf("</z303-delinq-n-1>");
		    if(endIndex5 == -1){
		    	user.setLimit1(null);
		    }else{
		    	
		        String limit1 = str.substring(beginIndex5, endIndex5);
		        if(limit1 == null || "".equals(limit1)){
		    	    user.setLimit1("正常");
		        }else{
		    	    user.setLimit1(limit1);
		        }
		    }

		  //获取限制2
		    int beginIndex6 = str.indexOf("<z303-delinq-n-2>") + "<z303-delinq-n-2>".length();
		    int endIndex6 = str.indexOf("</z303-delinq-n-2>");
		    if(endIndex6 == -1){
		    	user.setLimit2(null);
		    }else{
		        String limit2 = str.substring(beginIndex6, endIndex6);
		        if(limit2 == null || "".equals(limit2)){
		    	    user.setLimit2("正常");
		        }else{
		    	    user.setLimit2(limit2);
		        }
		    }
		    //获取限制3	
		    int beginIndex7 = str.indexOf("<z303-delinq-n-3>") + "<z303-delinq-n-3>".length();
		    int endIndex7 = str.indexOf("</z303-delinq-n-3>");
		    if(endIndex7 == -1){
		    	user.setLimit3(null);
		    }else{
		        String limit3 = str.substring(beginIndex7, endIndex7);
		        if(limit3 == null || "".equals(limit3)){
		    	    user.setLimit3("正常");
		        }else{
		    	    user.setLimit3(limit3);
		        }
		    }
		   //获取是否交押金参数
		    int beginIndex8 = str.indexOf("<z303-field-3>") + "<z303-field-3>".length();
		    int endIndex8 = str.indexOf("</z303-field-3>");
		    if(endIndex8 == -1){
		    	user.setCash(null);
		    }else{
		        String cash = str.substring(beginIndex8, endIndex8);
		        if(cash == null || "".equals(cash)){
		    	    user.setCash("否");
		        }else{
		    	    user.setCash("是");
		        }
		    }
		    
		   //获取姓名
	        int beginIndex1 = str.indexOf("<z303-name>") + "<z303-name>".length();
	        int endIndex1 = str.indexOf("</z303-name>");
	        if(endIndex1 == -1){
	        	user.setUsername(null);
	        }else{
	 	        String name = str.substring(beginIndex1,endIndex1);
	 	        user.setUsername(name);
	        }
	        //获取用户id
	        int beginIndex2 = str.indexOf("<z303-id>") + "<z303-id>".length();
	        int endIndex2 = str.indexOf("</z303-id>");
	        if(endIndex2 == -1){
	        	user.setNumber(null);
	        }else{
		        String number = str.substring(beginIndex2,endIndex2);
		        user.setNumber(number);
	        }
	        
	      //类型
	        int beginIndex3 = str.indexOf("<z305-bor-status>") + "<z305-bor-status>".length();
	        int endIndex3 = str.indexOf("</z305-bor-status>");
	        if(endIndex3 == -1){
	        	user.setStatus(null);
	        }else{
	        	
		        String status = str.substring(beginIndex3,endIndex3);
		        user.setStatus(status);
	        }
	        
	        
	      //学院
	        //正则匹配
	        //Pattern pattern = Pattern.compile("^0\\d+");
	        //Matcher ismatch = pattern.matcher(uid);
	        
	        int beginIndex4 = str.indexOf("<z304-address-3>") + "<z304-address-3>".length();
	        int endIndex4 = str.indexOf("</z304-address-3>");
	        if(endIndex4 == -1){
	        	user.setDepartment(null);
	        }else{
	        	
		        String department = str.substring(beginIndex4,endIndex4);
		        user.setDepartment(department);
	        }
	        	 
	        if(user.getDepartment() != null){
	        	//添加信息到数据库
		        userService.addUser(user);
			    //设置视图
		        model.addAttribute("user", user);
		        return "user/inform";  
	        }else{
	        	return "manager/err_manager";
	        }
	   }
	   return "manager/err_manager";
   }
	  
	  @RequestMapping("/maginform")
	  public String infromation(Model model, PageBean<Admin> pageBean) throws Exception{
		  
		    HttpSession session = request.getSession();
			Admin admin = (Admin) session.getAttribute("admin");
			String authority = admin.getAuthority();
			if(!("超级管理员".equals(authority))){
				return "manager/err_manager";
			}else{
		  //设置起始查询记录数
		   if(pageBean.getCurrentPage() == 0){
		      pageBean.setCurrentPage(1);
		    }
		   //设置每页记录数
		   pageBean.setPageSize(10);  
	       pageBean.setStart((pageBean.getCurrentPage() -1) * pageBean.getPageSize());
	       List<Admin> adminList =  adminService.findByPage(pageBean);
	       pageBean.setList(adminList);
		   
		   int count = adminService.findAdminCount(pageBean);
		   pageBean.setAllRow(count);  //总记录数
		 
		   //渲染界面
		   model.addAttribute("pageBean", pageBean);
		   //返回视图
		   return "manager/mag_inform";
	    }
	  }
    
	@RequestMapping("/add")
	public String add(){
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		String authority = admin.getAuthority();
		
		if("超级管理员".equals(authority)){
			return "manager/add_manager";
		}else{
			return "manager/err_manager";
		}
	}
	
	@RequestMapping("/addAdmin")
	public String addAdmin(Admin admin){
		String username = request.getParameter("username");
		
		String password = request.getParameter("password");
	
		String passwordagain = request.getParameter("passwordagain");
		
		String authority = request.getParameter("managerprivate");
		
		boolean b1 = (username == null || "".equals(username));
		
		boolean b2 = (password == null || "".equals(password));
		
		boolean b3 = (passwordagain == null || "".equals(passwordagain));
		
		boolean b4 = (password.equals(passwordagain));
	    
	       if(!b1 && !b2 && !b3 && b4){
			admin.setUsername(username);
			admin.setPassword(passwordagain);
			admin.setAuthority(authority);
			adminService.addAdmin(admin);
			return "redirect:/admin/maginform.action";
		  }
		   else{
		     return "manager/err_manager";
		  }
	}
	
	@RequestMapping("/update")
	public String updataAdmin(@RequestBody Admin admin){
		System.out.println(admin.toString());
		adminService.updateAdmin(admin);
		System.out.println(admin.toString());
		return "manager/mag_inform";
	}
	
	@RequestMapping("/detail")
	@ResponseBody
	public Admin findAdminById(int id) throws Exception{
		Admin admin = adminService.findAdminById(id);
		return admin;
	}
    
	public String findAdminByName(String name){
		adminService.findAdminByName(name);
		return "search";
	}
	
	@RequestMapping("/deluser")
	public String delAdmin(int id) throws Exception{
		adminService.delAdminBuId(id);
		return "manager/mag_inform";
	}
	
}
