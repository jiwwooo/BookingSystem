package org.zerock.mapper;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.dto.BookingDTO;
import org.zerock.dto.ConsultationDTO;
import org.zerock.dto.RoomInfoDTO;
import org.zerock.service.ConsultServiceImpl;
import org.zerock.service.RoomInfoService;
import org.zerock.service.RoomInfoServiceImpl;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestMapper {
	
	

	@Autowired
	private RoomInfoServiceImpl service;
	@Autowired
	private RoomInfoMapper roomMapper;
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private ConsultServiceImpl consults;
	
	@Autowired
	private SqlSessionFactory sqlSession;
	@Autowired
	public BookingMapper bMapper;
	
	@Test
	public void roomTest() {
		RoomInfoDTO room =roomMapper.getRoomInfo(95);
		System.out.println(room.getAdult_cost());
	}
	
	@Test
	public void roomInfo() {
		
	  service.roomPhotoProcess(95);
		
	}
	
	
	@Test 
	public void consult() {
		
		ConsultationDTO consult = new ConsultationDTO();
		consult.setContents("con");
		consult.setTitle("title");
		consult.setName("name");
		consult.setPasswd("pwd");
		consults.regConsult(consult);
	}
	@Test
	public void test1() {
		try (			Connection con = dataSource.getConnection();	) {
			System.out.println("con:"+con);
			
			//mapper.getCurrentDate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void test2() {
		BookingDTO booking = new BookingDTO();
		booking.setRoom_no(95);
		booking.setName("jiwoo");
		booking.setPhone("01088888888");
		booking.setAdult("1");
		booking.setChild("3");
		booking.setStart_date("20222222");
		booking.setEnd_date("22222222");
		booking.setTotal_cost(3500);
		
		
		bMapper.insertBooking(booking);
	}
	
	@Test
	public void booking11() {
		
		List<BookingDTO> booking = bMapper.selectBooking("test");
		System.out.println(booking);
		/*
		 * HttpServletRequest req =null; HttpSession session = req.getSession(); String
		 * name = (String) session.getAttribute("name"); System.out.println(name);
		 */
	}
}
