package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.dto.OptionsDTO;


@Service
public interface OptionService {
	

	public int regOption(OptionsDTO option);
	
	public int delOpton(OptionsDTO option);
	
	public int updOption(OptionsDTO option);
	
	public OptionsDTO getOption(int no);

	public List<OptionsDTO> getOptList();
}
