package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.dto.OptionsDTO;
import org.zerock.mapper.OptionMapper;



@Service
public class OptionServiceImpl implements OptionService {

	@Autowired
	public OptionMapper mapper;

	@Override
	public int regOption(OptionsDTO option) {
		// TODO Auto-generated method stub
		return mapper.regOption(option);
	}

	@Override
	public int delOpton(OptionsDTO option) {
		// TODO Auto-generated method stub
		return mapper.delOpton(option);
	}

	@Override
	public int updOption(OptionsDTO option) {
		// TODO Auto-generated method stub
		return mapper.updOption(option);
	}

	@Override
	public OptionsDTO getOption(int no) {
		// TODO Auto-generated method stub
		return mapper.getOption(no);
	}

	@Override
	public List<OptionsDTO> getOptList() {
		// TODO Auto-generated method stub
		return mapper.getOptList();
	}
	
	
	
	
	
	
}
