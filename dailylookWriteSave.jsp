<%@page import="java.io.PrintWriter"%>
<%@page import="bbs.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbstitle" />
<jsp:setProperty name="bbs" property="bbscontent" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String userID = null;
		String bbstitle = request.getParameter("bbstitle");
		String bbscontent = request.getParameter("bbscontent");
		String bbsimg = request.getParameter("bbsimg");
		if(session.getAttribute("id") != null){
			userID = (String)session.getAttribute("id");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href='Main.jsp'");
			script.println("</script>");
		}else{
			if(bbstitle == null || bbscontent == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				BbsDAO bbsDAO = new BbsDAO();
				int result = bbsDAO.write(bbstitle, userID, bbscontent, bbsimg);
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다')");
					script.println("history.back()");
					script.println("</script>");
				}else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기 성공')");
					script.println("location.href='dailylook.jsp'");
					script.println("</script>");
				}
			}
		}
	
	%>
</body>
</html>