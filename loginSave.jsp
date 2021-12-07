<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@ include file="connectDB.jsp" %><!-- 데이터베이스 커넥션 생성 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int result = -2;

request.setCharacterEncoding("UTF-8");
String ID = request.getParameter("id"); 
String Password = request.getParameter("password"); 

String 	sql = "select password from user ";
		sql += " where id ='" + ID + "'";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery(sql);
	if(rs.next()){
		if(rs.getString(1).equals(Password)){
			result = 1;
		} else {
			result = 0;
		}
	}

if (result == 1) {
	session.setAttribute("id", ID);
	PrintWriter script = response.getWriter();
	script.println("<script type=\"text/javascript\">");
	script.println("alert('로그인에 성공했습니다.')");
	script.println("location.href='Main1.jsp';");
	script.println("</script>");
	script.close();
	return;
} else if (result == 0) {
	PrintWriter script = response.getWriter();
	script.println("<script type=\"text/javascript\">");
	script.println("alert('비밀번호가 틀립니다.')");
	script.println("history.go(-1);");
	script.println("</script>");
	script.close();
} else if (result == -1) {
	PrintWriter script = response.getWriter();
	script.println("<script type=\"text/javascript\">");
	script.println("alert('아이디가 없거나 틀립니다.')");
	script.println("history.go(-1);");
	script.println("</script>");
	script.close();
} else if (result == -2) {
	PrintWriter script = response.getWriter();
	script.println("<script type=\"text/javascript\">");
	script.println("alert('아이디가 존재하지 않습니다.')");
	script.println("history.go(-1);");
	script.println("</script>");
	script.close();
}
%>
</body>
</html>