<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	* { margin: 0; padding: 0; } 
.box { display: block; margin: 100px auto; text-align: center; } 
.box h2 { font-size: 50px; margin-bottom: 80px; } 
.box h3 { font-size: 25px; text-align:center;} 
.ID, .Password { margin-top: 20px; margin-bottom: 30px; } 
.input { padding: 5px; width: 300px; line-height: 30px; font-size: 20px; border: none; border-bottom: solid 1px rgba(0, 0, 0, 1); } 
.btn { font-size: 20px; padding: 5px; background-color: rgba(255, 255, 255, 1); border: none; border: solid 1px rgba(0, 0, 0, 1); cursor: pointer; }
</style>
</head>
<body>
<jsp:include page="/Header1.jsp" flush="false"/>
<div class="box">
	<h2> 로그인 </h2>
	<form method="post" action="loginSave.jsp">
		<h3>아이디</h3>
		<div class="ID">
			<input type="text" class="input" placeholder="아이디" name="id" maxlength="20"> 
		</div> 
		<h3>비밀번호</h3>
		<div class="Password"> 
			<input type="password" class="input" placeholder="비밀번호" name="password" maxlength="20"> 
		</div> 
		<input type="submit" class="btn" value="로그인"> 
		<input type="button" class="btn" value="회원가입" onclick="location.href='register.jsp'"> 
	</form> 
</div>
</body>
</html>