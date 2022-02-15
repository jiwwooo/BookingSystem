package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.dto.NoticeDTO;

@Service
public interface NoticeService {
	
	public List<NoticeDTO> getNoticeList();
	
	public NoticeDTO getNotice(int no);
	
	public void insertNotice(NoticeDTO notice);
	
	public int deleteNotice(int no);
	
	public int updateNotice(NoticeDTO notice);
}
