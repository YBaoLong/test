package edu.xidian.lab.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		//判断当前路径是否为登录路径
		return true;
//		if(request.getRequestURI().indexOf("/index") > 0){
//			return true;
//		}
//		
//		//判断session 中是否有登录信息，如果没有则跳转到登录界面,如果有则放行
//		HttpSession session = request.getSession();
//		if(session.getAttribute("username") != null){
//			return  true;
//		} 
//		
//		request.getRequestDispatcher("/WEB-INF/jsp/user/login.jsp").forward(request, response);
//	        return false;
	}

}
