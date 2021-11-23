<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
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
		int bbsID = 0;
		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		
		// 만약 넘어온 데이터가 없다면
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='bbs.jsp'");
			script.println("</script");
		}
		
		Bbs bbs = new BbsDAO().getBbs(bbsID);
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
						<td colspan="2"><%= bbs.getBbstitle().replaceAll(" ", "&nbsp;")
								.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= bbs.getId() %></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%= bbs.getBbsdate().substring(0, 11) + bbs.getBbsdate().substring(11, 13) + "시"
								+ bbs.getBbsdate().substring(14, 16) + "분" %></td>
					</tr>
					<tr>
						<td>이미지</td>
						<td colspan="2"><%= bbs.getBbsimg()%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="height: 200px; text-align: left;"><%= bbs.getBbscontent().replaceAll(" ", "&nbsp;")
							.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
				</tbody>
			</table>
			<a href="dailylook.jsp" class="btn btn-primary">목록</a>
			<%
				if(USERID.equals(bbs.getId())){
			%>
					<a href="dailylookUpdate.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
					<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="dailylookDelete.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>
			<%
				}
			%>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>