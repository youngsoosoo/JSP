<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="bbs.BbsDAO"%>
<%@page import="bbs.Bbs"%>
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
	
		//파일저장 위치 설정
		String fileSave = "/fileSave";
		
		//실제 파일 저장 위치
		String real = application.getRealPath(fileSave);
		
		int max = 1024 * 1024 * 10;//kb, mb, gb 순서
		
		//파라미터
		MultipartRequest mr = new MultipartRequest(request, real, max, "utf-8",	new DefaultFileRenamePolicy());
			
		String bbstitle = mr.getParameter("bbstitle");
		String bbscontent = mr.getParameter("bbscontent");
		String filename = mr.getOriginalFileName("bbsimg");
		File file = new File(real+"/"+filename);
		
		
		String USERID = null;
		if(session.getAttribute("id") != null){
			USERID = (String) session.getAttribute("id");
		}
		if(USERID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href='login.jsp'");
			script.println("</script>");
		}
		
		int bbsID = 0;
		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='dailylook.jsp'");
			script.println("</script>");
		}
		//해당 'bbsID'에 대한 게시글을 가져온 다음 세션을 통하여 작성자 본인이 맞는지 체크한다
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if(!USERID.equals(bbs.getId())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다')");
			script.println("location.href='dailylook.jsp'");
			script.println("</script>");
		} else{
			// 입력이 안 됐거나 빈 값이 있는지 체크한다
			if(mr.getParameter("bbstitle") == null || mr.getParameter("bbscontent") == null
				|| mr.getParameter("bbstitle").equals("") || mr.getParameter("bbscontent").equals("")){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				// 정상적으로 입력이 되었다면 글 수정 로직을 수행한다
				BbsDAO bbsDAO = new BbsDAO();
				int result = bbsDAO.update(bbsID, bbstitle, bbscontent, filename);
				// 데이터베이스 오류인 경우
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글 수정하기에 실패했습니다')");
					script.println("history.back()");
					script.println("</script>");
				}else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글 수정하기 성공')");
					script.println("location.href='dailylook.jsp'");
					script.println("</script>");
				}
			}
		}
	
	%>
</body>
</html>