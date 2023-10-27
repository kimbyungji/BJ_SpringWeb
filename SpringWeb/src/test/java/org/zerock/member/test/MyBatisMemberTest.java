package org.zerock.member.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.member.command.MemberVO;
import org.zerock.member.mapper.MemberMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MyBatisMemberTest {
	
	@Autowired
	MemberMapper mapper;

	@Test
	public void test() {
		System.out.println("mapper주입테스트 : "+mapper);
	}
	
	@Test
	public void joinTest() {
		MemberVO vo = new MemberVO("testid", "testpw", "testuser", null);
		int result = mapper.join(vo);
		if(result==1) System.out.println("join성공");
	}
	
	@Test
	public void idCheckTest() {
		String id = "testid";
		int result = mapper.idCheck(id);
		if(result == 1) System.out.println("idCheck성공");
		else System.out.println("idCheck 실패시 : "+result);
	}
	
	@Test
	public void loginTest() {
		MemberVO vo = new MemberVO("testid", "testpw", null, null);
		int result = mapper.login(vo);
		if(result == 1) System.out.println("로그인성공");
		else System.out.println("idCheck 실패시 : "+result);
	}
	
}
