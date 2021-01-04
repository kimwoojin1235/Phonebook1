<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PhoneVo" %>
<%@ page import= "com.javaex.dao.PhoneDao" %>
<%
	String name=request.getParameter("name");
	String hp=request.getParameter("hp");
	String company=request.getParameter("company");
	//피라미터 안에 새로운 정보를 적어 넣었다
	PhoneVo personVo = new PhoneVo(name,hp,company);
	//vo안에서 이름,번호,회사번호에 대한 정보를 넣었다.
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personInsert(personVo);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	등록요청완료
</body>
</html>