package org.zerock.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.zerock.dto.RoomInfoDTO;


@Mapper
public interface RoomInfoMapper {

	
	public RoomInfoDTO getRoomInfo(int no);
	
	public int updateRoom(RoomInfoDTO room);

	public int updatePhoto(String images, int no);
}
