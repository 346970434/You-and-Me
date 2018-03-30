package controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import mapper.PictureMapper;
import pojo.Picture;

@Controller
@RequestMapping("/upload")
public class UploadController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	PictureMapper picturemapper = context.getBean(PictureMapper.class);
	
	
	@RequestMapping("/pic")
	public String UpLoadPicture(MultipartFile picture) {
		//保存文件到/home/ourpic
		String name = UUID.randomUUID().toString().replaceAll("-","");
				
		String Exname = FilenameUtils.getExtension(picture.getOriginalFilename());
		
		if(Exname.equals("jpg") || Exname.equals("png") || Exname.equals("jpeg") || Exname.equals("gif") || Exname.equals("bmp"))
		{
			File pic = new File("//home//ourpic//" + name + "." + Exname);
			try {
				picture.transferTo(pic);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Picture Pic = new Picture();
			Pic.setPicName(name);
			Pic.setPicUrl("/pic/" + name + "." + Exname);
			if(Exname.equals("")) {
				
			}
			else
			{
				picturemapper.insert(Pic);
			}
		}
		
		return "redirect:/user/getinpic";
	}

}
