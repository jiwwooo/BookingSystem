package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;



@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ConsultServiceTest {

	
	
	@Autowired
	ConsultServiceImpl service;
	
	
	@Test
	public void test() {
		//service.regConsult("相談", "予約", "jiwoo", "1234");
		//service.regConsult("相談", "予約", "000", "1234");
		
		//service.updConsult("000", "0000", 10);
			//	System.out.println(service.getConsultList());
				
		
		service.delConsult(10);
		service.delConsult(11);
		service.delConsult(12);
		
		
		
		
	}
}
