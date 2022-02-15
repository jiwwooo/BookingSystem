package org.zerock.dto;

import java.util.List;

import lombok.Data;

@Data
public class Paging {


	private int startPage;

	private int endPage;
	
	private boolean prev,next;
	
	
	private int total;

	private List<?> resultList;


}
