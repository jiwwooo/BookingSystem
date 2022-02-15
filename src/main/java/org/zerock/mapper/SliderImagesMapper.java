package org.zerock.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;



@Mapper
public interface SliderImagesMapper {
	
	
	public int insertImages(String file_name);

}
