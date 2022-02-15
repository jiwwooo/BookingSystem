package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ConsultMapperTest {

	@Autowired
	ConsultMapper mapper;

	@Test
	public void test() {
		
		//mapper.regConsult("相談", "予約", "jiwoo", "1234");
		//mapper.regConsult("test", "ddd", "jiwoo", "1234");
		//mapper.updConsult("update", "gg", 11);
		//System.out.println(mapper.getConsult(10));
		//System.out.println(mapper.getConsultList());
		//System.out.println(mapper.);
		
		//System.out.println(mapper.checkUser("jiwoo", "1234"));
		
		
		
	}
}
