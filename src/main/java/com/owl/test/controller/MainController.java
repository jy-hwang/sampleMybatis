package com.owl.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.owl.test.dto.MemberDTO;
import com.owl.test.jdbc.IMemberService;

@Controller
public class MainController {

	@Autowired
	IMemberService iMemberRepository;
	
	@GetMapping("/")
	public String home(ModelMap map) {
		
		List<MemberDTO> listMember = iMemberRepository.selectAll();
		
		map.addAttribute("lists",listMember);
		
		
		return "home";
	}
	
	
}
