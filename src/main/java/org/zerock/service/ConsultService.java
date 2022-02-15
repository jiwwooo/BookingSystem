package org.zerock.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.zerock.dto.ConsultationDTO;


@Service
public interface ConsultService {

	
	public void regConsult(ConsultationDTO consult);
	public int delConsult(int no);
	public ConsultationDTO getConsult(int no);
	public int updConsult(ConsultationDTO consult);
	public List<ConsultationDTO>  getConsultList();
	
	
	public ConsultationDTO checkUser(String name, String passwd);
	
	
	public int insertReply(ConsultationDTO reply);
	public ConsultationDTO readReply(int no);
	public int deleteReply(int no);
	public int updateReply(ConsultationDTO reply);
	public List<ConsultationDTO> getListReply( int no);
	
	
	
}
