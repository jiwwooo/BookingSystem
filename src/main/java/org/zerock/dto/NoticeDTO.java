package org.zerock.dto;

import java.util.Date;

import org.springframework.stereotype.Repository;

import lombok.Data;

@Data
@Repository
public class NoticeDTO {
	
	private int no;
	private String title;
	private String contents;
	private String delete_flat;
	private Date created_at;
	private Date updated_at;
	private int build_code;

}
