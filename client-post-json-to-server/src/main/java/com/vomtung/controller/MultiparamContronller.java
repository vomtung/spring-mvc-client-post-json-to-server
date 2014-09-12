package com.vomtung.controller;

import java.io.IOException;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vomtung.entity.Product;
import com.vomtung.entity.User;

@Controller
@RequestMapping(value="/multiple")
public class MultiparamContronller {
	
	@RequestMapping(method = RequestMethod.GET)
	String index() {
		return "multiple";
	};
	
	@RequestMapping(value = "/post", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public User post(@RequestBody String json) {
		ObjectMapper mapper = new ObjectMapper();
		Product product = null;
		User user = null;
		try {
			JsonNode node = mapper.readTree(json);
			product = mapper.readValue(node.get("product"), Product.class);
			user = mapper.readValue(node.get("user"), User.class);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	};
}
