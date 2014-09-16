package com.vomtung.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vomtung.entity.Product;

@Controller
@RequestMapping(value="/")
public class IndexController {
	
	@RequestMapping(method=RequestMethod.GET)
	String index(){
		return "index";
	};
	
	 @RequestMapping(value="/product", method = RequestMethod.POST ,
			 produces = MediaType.APPLICATION_JSON_VALUE,consumes = MediaType.APPLICATION_JSON_VALUE)
	 @ResponseBody
	 public Product post( @RequestBody Product product) {    
		 return product;
	};
}
