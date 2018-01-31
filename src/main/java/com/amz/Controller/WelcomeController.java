package com.amz.Controller;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@ComponentScan()
public class WelcomeController {

	
	@RequestMapping("/")
	public String index()
	{
		try{
		return "login";
		}
		catch(Exception e)
		{
			return null;
			
		}
	}
	
	@RequestMapping("/index")
	public String indexNew()
	{
		try{
		return "index";
		}
		catch(Exception e)
		{
			return null;
			
		}
	}
}
