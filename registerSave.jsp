<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="user.UserDTO"%>
<%@ include file="connectDB.jsp" %><!-- 데이터베이스 커넥션 생성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String ID 		= request.getParameter("id"); 
String Password = request.getParameter("password"); 
String Name 	= request.getParameter("name");
String Date 	= request.getParameter("date");
String Gender 	= request.getParameter("gender");

String 	sql = "INSERT INTO user(id,password,name,birthday,gender) ";
		sql += " VALUES('"+ID+"','"+Password+"','"+Name+"','"+Date+"','"+Gender+"')";
	pstmt = conn.prepareStatement(sql);

	int result = pstmt.executeUpdate(sql);

if (ID == null || ID.equals("") || Password == null
	|| Password.equals("") || Name == null || Name.equals("")
	|| Date == null || Date.equals("") || Gender == null || Gender.equals("")) {
	PrintWriter script = response.getWriter();
	script.println("<script type=\"text/javascript\">");
	script.println("alert('입력이 안 된 사항이 있습니다.')");
	script.println("history.go(-1);");
	script.println("</script>");
	script.close();
	return;
}
if (result == 1) {
	session.setAttribute("id", ID);
	PrintWriter script = response.getWriter();
	script.println("<script type=\"text/javascript\">");
	script.println("alert('회원가입에 성공했습니다.')");
	script.println("location.href='Main.jsp';");
	script.println("</script>");
	script.close();
	return;
}else if (result == -1) {
	PrintWriter script = response.getWriter();
	script.println("<script type=\"text/javascript\">");
	script.println("alert('회원가입에 실패했습니다.')");
	script.println("history.go(-1);");
	script.println("</script>");
	script.close();
	return;
}

%>
<script>
	alert("회원가입 성공!");
	self.close();
	opener.location = "Main.jsp";
</script>
</body>
</html>