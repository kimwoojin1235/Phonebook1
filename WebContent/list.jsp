<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PhoneVo"%>
<%
	PhoneDao phoneDao = new PhoneDao();
List<PhoneVo> personList = phoneDao.getpersonList();
System.out.println(personList.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>김우진 전화번호 리스트</h1>
	<p>입력한 정보 내역 입니다.</p>
	<%for (int i = 0; i < personList.size(); i++) {%>
		<table border='1'>
			<tr>
				<td>이름(name)</td>
				<td><%=personList.get(i).getName()%></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=personList.get(i).getHp()%></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=personList.get(i).getCompany()%></td>
			</tr>
			<br></br>
		</table>
	<%}%>
	<br></br>
	<a href="./writeForm.jsp">추가번호 등록</a>
</body>
</html>