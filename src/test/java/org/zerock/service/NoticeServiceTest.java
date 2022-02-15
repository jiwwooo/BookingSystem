package org.zerock.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.mapper.NoticeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class NoticeServiceTest {

	
	@Autowired
	NoticeServiceImpl service;
	
	@Test
	public void test() {
		
		
		//System.out.println(service.getNoticeList());
		
		//service.updateNotice("T000", "000",18);
		//service.deleteNotice(18);
		
		//service.insertNotice("0003", "0123");
		
		
		System.out.println(service.getNotice(24));
		
		
		
	}
}
