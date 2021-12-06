<%@page import="Board.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connectDB.jsp" %><!-- 데이터베이스 커넥션 생성 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
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
	.copy {
	text-align: center;
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
	int pageNumber = 1;
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
					//현재 게시글을 내림차순으로 조회하여 가장 마지막 글의 번호를 구한다
					int next = 1;//첫 번째 게시물인 경우
					String sql2 = "select boardid from board order by boardid desc";
					pstmt = conn.prepareStatement(sql2);
					rs = pstmt.executeQuery(sql2);
					if(rs.next()) {
						next = rs.getInt(1) + 1;
					}
						String sql = "select * from board where boardid < ? order by boardid desc limit 10";
						ArrayList<Board> list = new ArrayList<Board>();
							pstmt = conn.prepareStatement(sql);
							pstmt.setInt(1, next - ((pageNumber - 1) * 10));
							rs = pstmt.executeQuery();
							while(rs.next()) {
								Board board = new Board();
								board.setBoardid(rs.getInt(1));
								board.setBoardtitle(rs.getString(2));
								board.setId(rs.getString(3));
								board.setBoarddate(rs.getString(4));
								board.setBoardcontent(rs.getString(5));
								board.setBoardimg(rs.getString(6));
								list.add(board);
							}
						for(int i = 0; i < list.size(); i++){
					%>
					<tr>
						<td><%= list.get(i).getBoardid() %></td>
						<td><a href="dailylookView.jsp?boardID=<%= list.get(i).getBoardid() %>">
							<%= list.get(i).getBoardtitle() %></a></td>
						<td><%= list.get(i).getId() %></td>
						<td><%= list.get(i).getBoarddate().substring(0, 11) + list.get(i).getBoarddate().substring(11, 13) + "시"
							+ list.get(i).getBoarddate().substring(14, 16) + "분" %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				if(pageNumber != 1){
			%>
				<a href="dailylook.jsp?pageNumber=<%=pageNumber - 1 %>"
					class="btn btn-success btn-arraw-left">이전</a>
			<%
				}
				String sql3 = "select * from board where boardid < ?";
				pstmt = conn.prepareStatement(sql3);
				pstmt.setInt(1, next - (pageNumber - 1) * 10);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(pageNumber == 1){
			%>
						<a href="dailylook.jsp?pageNumber=<%=pageNumber + 1 %>"
						class="btn btn-success btn-arraw-left">다음</a>
			<%
					}
				}
			%>
			<a href="dailylookWrite.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
<script src="https:code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<br><br><br><br><br><br><br><br><br><br><br><br>
<footer>
        <p class="copy" >Copyright © 2021 박용수 </p>
    </footer>
</body>
</html>