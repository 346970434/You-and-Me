package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mapper.PictureMapper;
import mapper.UserMapper;
import pojo.Picture;
import pojo.PictureExample;
import pojo.User;
import pojo.UserExample;

@Controller
@RequestMapping({"/user"})
public class UserController
{

	@RequestMapping("/listpic")
	public ModelAndView ShowPicutreList(HttpServletRequest request, HttpServletResponse response) {
		 ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		  PictureMapper picturemapper = context.getBean(PictureMapper.class);
		  ModelAndView mv = new ModelAndView();
	    HttpSession session = request.getSession();
	    String name = (String)session.getAttribute("user");
	    if (name == null) {
	    	mv.setViewName("login");
	      return mv;
	    }
	    else {
	    	
		    PictureExample pexample = new PictureExample();
		    pexample.createCriteria().andPicNameIsNotNull().andPicUrlIsNotNull();
		    List<Picture> list = picturemapper.selectByExample(pexample);
	    	mv.setViewName("deletepic");
	    	mv.addObject("piclist",list);
	    	return mv;
	    }
		
	}
	
	@RequestMapping("/delete")
	public String UserDeletePicture(HttpServletRequest request, HttpServletResponse response)
	{
		String picname = request.getParameter("picname");
		
		System.out.println(picname);
		 ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		 PictureMapper picturemapper = context.getBean(PictureMapper.class);
		
		 PictureExample pexample = new PictureExample();
		 pexample.createCriteria().andPicNameEqualTo(picname);
		 picturemapper.deleteByExample(pexample);
		 
		 File pic = new File("//home//ourpic//" + picname);
		 if(pic.exists()) {
			 pic.delete();
		 }
		return "redirect:listpic";
		
	}
	
	

  @RequestMapping({"/getinpic"})
  public ModelAndView ConfirmIsLogin(HttpServletRequest request, HttpServletResponse response)
  {
	  ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	  PictureMapper picturemapper = context.getBean(PictureMapper.class);
	  ModelAndView mv = new ModelAndView();
    HttpSession session = request.getSession();
    String name = (String)session.getAttribute("user");
    if (name == null) {
    	mv.setViewName("login");
      return mv;
    }
    else {
    	
	    PictureExample pexample = new PictureExample();
	    pexample.createCriteria().andPicNameIsNotNull().andPicUrlIsNotNull();
	    List<Picture> list = picturemapper.selectByExample(pexample);
    	mv.setViewName("breviary");
    	mv.addObject("piclist",list);
    	return mv;
    }
  }
  
  
  //通过表单验证登陆
  @RequestMapping(value={"/login"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public String UserLogin(HttpServletRequest request, HttpServletResponse response)
  {
	  ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	  UserMapper usermapper = (UserMapper) context.getBean(UserMapper.class);
    HttpSession session = request.getSession();
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    UserExample uexample = new UserExample();
    uexample.createCriteria().andUsernameEqualTo(username).andPasswordEqualTo(password);
    List<User> user =  usermapper.selectByExample(uexample);
    if (user.size() == 0) {
      return "redirect:/loginpage";
    }
    else if (user.size() == 1){
    	  session.setAttribute("user", username);
    	  return "breviary";
    }
    else
    {
    	return "main";
    }
  }
  
  
  //通过ajax 验证登陆 不刷新页面
  @RequestMapping(value = "/verify")
  public void VerifyLogin(HttpServletRequest request, HttpServletResponse response) {
	  ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	  UserMapper usermapper = (UserMapper) context.getBean(UserMapper.class);
	  String username = request.getParameter("username");
	  String password = request.getParameter("password");
	  UserExample uexample = new UserExample();
	  uexample.createCriteria().andUsernameEqualTo(username).andPasswordEqualTo(password);
	  List<User> user =  usermapper.selectByExample(uexample);
	  
	  if(user.size() == 0) {
		  try {
			response.getWriter().write("密码或者账号错误,重新登陆!");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
	  else {
		  HttpSession session = request.getSession();
		  session.setAttribute("user", username);
		  
		  try {
			response.getWriter().write("密码正确");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
  }
}
