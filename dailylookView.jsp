<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
<style>
    a {
  	text-decoration-line: none;
	color: black;
	}
	a:hover{
	text-decoration-line: none;
	color: black;
	}
</style>
</head>
<body>
	<%	
	String USERID = (String) session.getAttribute("id");

	if(USERID ==null){
%>
	<script>
		alert("로그인 이후에 이용가능합니다.");
		self.close();
	</script>
<%
	return;
	}
		int boardID = 0;
		if(request.getParameter("boardID") != null){
			boardID = Integer.parseInt(request.getParameter("boardID"));
		}
		
		// 만약 넘어온 데이터가 없다면
		if(boardID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='bbs.jsp'");
			script.println("</script");
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
	%>
	<div class="container">
		<div class="row">
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
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%= board.getBoardtitle().replaceAll(" ", "&nbsp;")
								.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= board.getId() %></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%= board.getBoarddate().substring(0, 11) + board.getBoarddate().substring(11, 13) + "시"
								+ board.getBoarddate().substring(14, 16) + "분" %></td>
					</tr>
					<tr>
						<td>이미지</td>
						<td colspan="2"><img alt="<%= board.getBoardimg()%>" src="fileSave/<%=board.getBoardimg() %>" width="500" height="500"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style=" text-align: left;"><%= board.getBoardcontent().replaceAll(" ", "&nbsp;")
							.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
				</tbody>
			</table>
			<a href="dailylook.jsp" class="btn btn-primary">목록</a>
			<%
				if(USERID.equals(board.getId())){
			%>
					<a href="dailylookUpdate.jsp?boardID=<%= boardID %>" class="btn btn-primary">수정</a>
					<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="dailylookDelete.jsp?boardID=<%= boardID %>" class="btn btn-primary">삭제</a>
			<%
				}
			%>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>