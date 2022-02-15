package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.dto.NoticeDTO;
import org.zerock.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	public NoticeMapper mapper;

	@Override
	public List<NoticeDTO> getNoticeList() {
		// TODO Auto-generated method stub
		return mapper.getNoticeList();
	}

	@Override
	public NoticeDTO getNotice(int no) {
		return mapper.getNotice(no);
	}

	@Override
	public void insertNotice(NoticeDTO notice) {
		mapper.insertNotice(notice);
	}

	@Override
	public int deleteNotice(int no) {
		return mapper.deleteNotice(no);
	}

	@Override
	public int updateNotice(NoticeDTO notice) {
		return mapper.updateNotice(notice);
	}

}
