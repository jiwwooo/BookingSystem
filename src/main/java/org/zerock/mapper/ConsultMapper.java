package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.zerock.dto.ConsultationDTO;

@Mapper
public interface ConsultMapper {
	
	public void regConsult(ConsultationDTO consult);
	public int delConsult(@Param("no") int no);
	public ConsultationDTO getConsult(@Param("no") int no);
	public int updConsult(ConsultationDTO consult);
	public List<ConsultationDTO>  getConsultList();
	
	
	
	public ConsultationDTO checkUser(@Param("name")String name, @Param("passwd")String passwd);
	
	
	
	
	public int insertReply(ConsultationDTO reply);
	public ConsultationDTO readReply(int no);
	public int deleteReply(int no);
	public int updateReply(ConsultationDTO reply);
	public List<ConsultationDTO> getListReply( @Param("no") int no);
	

}
