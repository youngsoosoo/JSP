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
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if(!USERID.equals(bbs.getId())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다')");
			script.println("location.href='dailylook.jsp'");
			script.println("</script>");
		}
	%>
	<div class="container">
		<div class="row">
			<form method="post" action="dailylookUpdateSave.jsp?bbsID=<%= bbsID %>">
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
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbstitle" maxlength="50" value="<%=bbs.getBbstitle() %>"></td>
						</tr>
						<tr>
							<td><input type="file" class="form-control" name="bbsimg"></td>
						</tr>
						<tr>
							<td>
								<textarea class="form-control" placeholder="글 내용" name="bbscontent" maxlength="2048" style="height: 350px;">
									<%=bbs.getBbscontent() %>
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