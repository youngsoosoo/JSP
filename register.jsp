<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* { margin: 0; padding: 0; }
	.box { display: block; margin: 50px auto; text-align: center; } 
	.box h2 { font-size: 50px; margin-bottom: 50px; } 
	.box h3 { font-size: 25px; } 
	.ID, .Password, .Name, .Date, .Gender { margin-top: 20px; margin-bottom: 30px; } 
	.input { padding: 5px; width: 300px; line-height: 30px; font-size: 20px; border: none; border-bottom: solid 1px rgba(0, 0, 0, 1); } 
	.btn { font-size: 20px; padding: 5px; background-color: rgba(255, 255, 255, 1); border: none; border: solid 1px rgba(0, 0, 0, 1); cursor: pointer; }
	h4{
	text-align:right;
	}
	h1{
	text-align:center;
	}
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
	<h1><a href="Main.jsp" style="text-align:center;">DAILY LOOK</a></h1><h4><a href="Main.jsp">로그인</a></h4><br><hr><br>
	<br><br>
	<div class="box"> 
		<h2> 회원 가입 </h2>
		<form method="post" action="registerSave.jsp">
			<h3>아이디</h3>
			<div class="ID">
				<input type="text" class="input" style="ime-mode:disabled;" placeholder="아이디" name="id" maxlength="20">
			</div>
			<h3>비밀번호</h3>
			<div class="Password"> 
				<input type="password" class="input" placeholder="비밀번호" name="password" maxlength="20"> 
			</div> 
			<h3>이름</h3> 
			<div class="Name"> 
				<input type="text" class="input" placeholder="이름" name="name" maxlength="20"> 
			</div> <h3>생년월일</h3> 
			<div class="Date"> 
				<input type="date" class="input" placeholder="생년월일" name="date"> 
			</div> 
			<h3>성별</h3> 
			<div class="Gender"> 
				<input type="radio" name="gender" value="M" title="성별"> 남자 
				<input type="radio" name="gender" value="F" title="성별"> 여자 
			</div> 
			<input type="submit" class="btn" value="회원가입"> 
		</form> 
	</div>

</body>
</html>