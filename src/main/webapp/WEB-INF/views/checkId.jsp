<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String inputId=request.getParameter("inputId");

boolean canUse = false;

if(inputId.equals("admin")){
	canUse = true;
}
%>

{"canUse":<%=canUse%>}