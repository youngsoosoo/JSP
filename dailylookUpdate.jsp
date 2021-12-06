<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@page import="Board.Board"%>
<%@ include file="connectDB.jsp" %><!-- 데이터베이스 커넥션 생성 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
	<%
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
		}
	%>
	<div class="container">
		<div class="row">
			<form method="post" action="dailylookUpdateSave.jsp?boardID=<%= boardID %>" enctype="multipart/form-data">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<caption>
						<jsp:include page="/Header.jsp" flush="false"/>
					</caption>
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">DAILY LOOK</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="boardtitle" maxlength="50" value="<%=board.getBoardtitle() %>"></td>
						</tr>
						<tr>
							<td><input type="file" class="form-control" name="boardimg"></td>
						</tr>
						<tr>
							<td>
								<textarea class="form-control" placeholder="글 내용" name="boardcontent" maxlength="2048" style="height: 350px;">
									<%=board.getBoardcontent() %>
								</textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="수정하기 ">
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>