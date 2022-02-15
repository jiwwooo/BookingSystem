package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.zerock.dto.OptionsDTO;


@Mapper
public interface OptionMapper {

	
	public int regOption(OptionsDTO option);
	
	public int delOpton(OptionsDTO option);
	
	public int updOption(OptionsDTO option);
	
	public OptionsDTO getOption(int no);
	
	public List<OptionsDTO> getOptList();
}
