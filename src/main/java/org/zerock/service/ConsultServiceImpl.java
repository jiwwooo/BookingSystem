package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.dto.ConsultationDTO;
import org.zerock.mapper.ConsultMapper;


@Service
public class ConsultServiceImpl implements ConsultService {

	
	@Autowired
	public ConsultMapper mapper;
	
	@Override
	public void regConsult(ConsultationDTO consult) {
		
		mapper.regConsult(consult);
	}

	@Override
	public int delConsult(int no) {
		return mapper.delConsult(no);
	}

	@Override
	public ConsultationDTO getConsult(int no) {
		// TODO Auto-generated method stub
		return mapper.getConsult(no);
	}

	@Override
	public int updConsult(ConsultationDTO consult) {
		return mapper.updConsult(consult);
		
	}

	@Override
	public List<ConsultationDTO> getConsultList() {
		// TODO Auto-generated method stub
		return mapper.getConsultList();
	}
	
	
	@Override
	public ConsultationDTO checkUser(String name, String passwd) {
		// TODO Auto-generated method stub
		return mapper.checkUser(name, passwd);
	}

	@Override
	public int insertReply(ConsultationDTO reply) {
		// TODO Auto-generated method stub
		return mapper.insertReply(reply);
	}

	@Override
	public ConsultationDTO readReply(int no) {
		// TODO Auto-generated method stub
		return mapper.readReply(no);
	}

	@Override
	public int deleteReply(int no) {
		// TODO Auto-generated method stub
		return mapper.deleteReply(no);
	}

	@Override
	public int updateReply(ConsultationDTO reply) {
		// TODO Auto-generated method stub
		return mapper.updateReply(reply);
	}

	@Override
	public List<ConsultationDTO> getListReply(int no) {
		// TODO Auto-generated method stub
		return mapper.getListReply(no);
	}


}
