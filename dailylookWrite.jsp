<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
%>
	<div class="container">
		<div class="row">
			<form method="post" action="dailylookWriteSave.jsp" enctype="multipart/form-data">
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
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbstitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><input type="file" class="form-control" name="bbsimg" required="required"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용 양식
	- 키 : 
	- 몸무게 : 
	- 옷 판매 정보 : 
	- 하고싶은 말 : " name="bbscontent" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<!-- 글쓰기 버튼 생성 -->
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>