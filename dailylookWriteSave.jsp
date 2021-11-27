<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Enumeration"%>
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
		//파일저장 위치 설정
		String fileSave = "/fileSave";
	
		//실제 파일 저장 위치
		String real = application.getRealPath(fileSave);
	
		int max = 1024 * 1024 * 10;//kb, mb, gb 순서
	
		//파라미터
		MultipartRequest mr = new MultipartRequest(request, real, max, "utf-8",	new DefaultFileRenamePolicy());
		
		String USERID = null;
		String bbstitle = mr.getParameter("bbstitle");
		String bbscontent = mr.getParameter("bbscontent");
		String filename = mr.getOriginalFileName("bbsimg");
		File file = new File(real+"/"+filename);

		if(session.getAttribute("id") != null){
			USERID = (String)session.getAttribute("id");
		}
		if(USERID == null){
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
				int result = bbsDAO.write(bbstitle, USERID, bbscontent, filename);
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