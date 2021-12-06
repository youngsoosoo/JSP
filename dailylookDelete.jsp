<%@page import="Board.Board"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connectDB.jsp" %><!-- 데이터베이스 커넥션 생성 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String USERID = null;
		if(session.getAttribute("id") != null){
			USERID = (String)session.getAttribute("id");
		}
		if(USERID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href='Main.jsp'");
			script.println("</script>");
		}
		
		int boardID = 0;
		if(request.getParameter("boardID") != null){
			boardID = Integer.parseInt(request.getParameter("boardID"));
		}
		if(boardID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='dailylook.jsp'");
			script.println("</script>");
		}
		String sql = "select * from board where boardid = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, boardID);
		rs = pstmt.executeQuery();
		Board board = new Board();
			if(rs.next()) {
				board.setBoardid(rs.getInt(1));
				board.setBoardtitle(rs.getString(2));
				board.setId(rs.getString(3));
				board.setBoarddate(rs.getString(4));
				board.setBoardcontent(rs.getString(5));
				board.setBoardimg(rs.getString(6));
			}
		if(!USERID.equals(board.getId())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다')");
			script.println("location.href='dailylook.jsp'");
			script.println("</script>");
		} else{
			// 글 삭제 로직을 수행한다
			String sql1 = "delete from board where boardid = '"+boardID+"'";
			pstmt = conn.prepareStatement(sql1);
			int result = pstmt.executeUpdate(sql1);
			// 데이터베이스 오류인 경우
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글 수정하기에 실패했습니다')");
				script.println("history.back()");
				script.println("</script>");
			// 글 삭제가 정상적으로 실행되면 알림창을 띄우고 게시판 메인으로 이동한다
			}else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글 삭제하기 성공')");
				script.println("location.href='dailylook.jsp'");
				script.println("</script>");
			}
		}
	
	%>
</body>
</html>