package org.zerock.service;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.dto.RoomInfoDTO;

@Service
public interface RoomInfoService {
	
	
	public RoomInfoDTO getRoomInfo(int no);

	public int updateRoom(RoomInfoDTO room);

	public int updatePhoto(String images, int no);

	public String[] roomPhotoProcess(int no);
}
