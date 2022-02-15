package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.dto.BookingDTO;
import org.zerock.dto.RoomInfoDTO;
import org.zerock.mapper.BookingMapper;


@Service
public class BookingServiceImpl implements BookingService {

	
	@Autowired
	private BookingMapper mapper;
	
	@Override
	public int insertBooking(BookingDTO booking) {
		// TODO Auto-generated method stub
		return mapper.insertBooking(booking);
	}

	@Override
	public List<BookingDTO> selectBooking(String name) {
		
		
		
		
		
		
	
    
	    return mapper.selectBooking(name);
	}
	

}
