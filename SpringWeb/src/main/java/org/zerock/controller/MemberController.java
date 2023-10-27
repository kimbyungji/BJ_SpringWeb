package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.member.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("")
	public String goHome() {
		return "home";
	}
	
	// 조인 화면 처리
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "member/join";
	}
	
	// 로그인 화면 처리
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	// ajax요청 받기
	
//	<dependency>
//	    <groupId>com.fasterxml.jackson.core</groupId>
//	    <artifactId>jackson-databind</artifactId>
//	    <version>2.15.2</version>
//   </dependency>
	
	@RequestMapping(value = "/checkId", method = RequestMethod.POST)
	@ResponseBody
	// 메서드 @responseBody로 어노테이션 되어 있으면 메서드에서 리턴되는 값은 View리졸버로 전달되지 않음. 해당 메서드를 호출한 곳으로 결과를 반환
	public int checkId(@RequestParam("id") String id) {
		int result = memberService.idCheck(id);
		
		return result;
	}
	
	// ajax 테스트
	@RequestMapping(value ="/ajax_test", method = RequestMethod.GET)
	public String test() {
		return "member/ajax_test";
	}
}
