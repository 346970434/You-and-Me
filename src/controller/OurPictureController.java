package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpRequest;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mapper.PictureMapper;
import pojo.Picture;
import pojo.PictureExample;

@Controller
public class OurPictureController {

	ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	PictureMapper picturemapper = context.getBean(PictureMapper.class);

	@RequestMapping({ "/front" })
	public ModelAndView ShowFrontPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("front");
		return mv;
	}

	@RequestMapping({ "/picture" })
	public ModelAndView ShowPicPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pic");
		return mv;
	}

	@RequestMapping({ "/me" })
	public ModelAndView showme() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("my");
		return mav;
	}

	@RequestMapping({ "/all" })
	public ModelAndView showall() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("breviary");
		return mav;
	}

	@RequestMapping({ "/main" })
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}

	@RequestMapping({ "/loginpage" })
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}

	@RequestMapping({ "/artical" })
	public ModelAndView article() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("artical");
		return mav;
	}

	@RequestMapping({ "/music" })
	public ModelAndView Music() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("music");
		return mav;
	}

	@RequestMapping({ "/showpic" })
	public void Showpic(HttpServletRequest request,HttpServletResponse response) {
		int num = 0;
		String res = "{\"res\":[";
		List<Picture> listpic = new ArrayList<>();
		PictureExample pexample = new PictureExample();
		pexample.createCriteria().andPicNameIsNotNull();
		listpic = picturemapper.selectByExample(pexample);
		
		for(Picture p : listpic) {
			if(num == listpic.size() - 1) {
				res += "{\"name\":" + "\"" + p.getPicName() +"\"" +"," + "\"url\":" + "\"" + p.getPicUrl()+ "\"" + "}";
			}
			else {
				res += "{\"name\":" + "\"" + p.getPicName() +"\"" +"," + "\"url\":" + "\"" + p.getPicUrl()+ "\"" + "},";
			}
			num++;
			
		}
		
		res += "]}";
		System.out.println(res);
		
		try {
			response.getWriter().write(res);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("/test")
	public String test() {
		return "upload";
	}
	
	
	
}
