package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.zerock.dto.BookingDTO;
import org.zerock.dto.RoomInfoDTO;

@Mapper
public interface BookingMapper {

	public int insertBooking(BookingDTO booking);

	public List<BookingDTO> selectBooking( @Param("name") String name );




}
