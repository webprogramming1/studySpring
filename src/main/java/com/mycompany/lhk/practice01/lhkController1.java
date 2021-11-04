package com.mycompany.lhk.practice01;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/lhk/*")
public class lhkController1 {

	@RequestMapping(value="/input", method=RequestMethod.GET)
	public String showInputView() {
		
		return "lhk/input";
	}
	
}
