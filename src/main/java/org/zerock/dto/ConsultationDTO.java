package org.zerock.dto;

import java.util.Date;

import lombok.Data;


@Data
public class ConsultationDTO {

	private int no;
	private int grno;
	private int grgrod;
	private int depth;
	private String title;
	private String contents;
	private String name;
	private String passwd;
	private String lock_flag;
	private String delete_flag;
	private Date created_at;
	private Date updated_at;
	private int build_code;
}
