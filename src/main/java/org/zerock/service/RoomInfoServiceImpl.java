package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.dto.RoomInfoDTO;
import org.zerock.mapper.RoomInfoMapper;


@Service
public class RoomInfoServiceImpl implements RoomInfoService {
	
	
	@Autowired
	public RoomInfoMapper mapper;
	
	
	@Override
	public RoomInfoDTO getRoomInfo(int no) {
		return mapper.getRoomInfo(no);
	}

	
	@Override
	public int updateRoom(RoomInfoDTO room) {
		return mapper.updateRoom(room);
	}


	@Override
	public int updatePhoto(String images, int no) {
		// TODO Auto-generated method stub
		return mapper.updatePhoto(images, no);
	}
	
	@Override
	public String[] roomPhotoProcess(@RequestParam int no) {
		RoomInfoDTO room = getRoomInfo(no);
		String photoList = room.getImages();
		
        String[] photos = photoList.split("\\,");
        
        return photos;
		
		
	}
	
}
