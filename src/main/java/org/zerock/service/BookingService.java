package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.dto.BookingDTO;
import org.zerock.dto.RoomInfoDTO;
import org.zerock.mapper.BookingMapper;


@Service
public interface BookingService {
	
	

	
	
	public int insertBooking(BookingDTO booking);
	public List<BookingDTO> selectBooking(String name);



}
