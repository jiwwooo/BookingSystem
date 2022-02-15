package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.mapper.SliderImagesMapper;

@Service
public  class SliderImagesImpl implements SliderImages {

	@Autowired
	SliderImagesMapper mapper;

	@Override
	public int insertImages(String file_name) {
		// TODO Auto-generated method stub
		return mapper.insertImages(file_name);
	}
	
	
	
	
	

}
