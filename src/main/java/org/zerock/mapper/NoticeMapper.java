package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.zerock.dto.NoticeDTO;

@Mapper
public interface NoticeMapper {

	public List<NoticeDTO> getNoticeList();
	
	public NoticeDTO getNotice(@Param("no") int no);
	
	public void insertNotice(NoticeDTO notice);
	
	public int deleteNotice(@Param("no") int no);
	
	public int updateNotice(NoticeDTO notice);
	
	
	
	
	
}
