<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: sans-serif;
        font-weight : bold;
    }
    h3 {
        color : black;
        text-shadow : 2px 2px 2px white, 0 0 25px purple, 0 0 5px gainsboro;
        margin-left : 350px;
    }
    .logo {
        margin-left : 900px;
    }
    .box {
        display : inline-block;
        width : 1800px;
        height : 300px;
        border : none;
        margin-left : 60px;
    }
    .box1 {
        display : inline-block;
        width : 300px;
        height : 300px;
        border : none;
        margin-left: 150px;   
    }
    .box2 {
        display : inline-block;
        width : 300px;
        height : 300px;
        border : none;
        text-align : center;
        margin-left : 5px;        
    }
    .box3 {
        display : inline-block;
        width : 300px;
        height : 300px;
        border : none;
        text-align : center;
        margin-left : 5px;        
    }
    .box4 {
        display : inline-block;
        width : 300px;
        height : 300px;
        border : none;
        text-align : center;
        margin-left : 5px;              
    }
    .box5 {
        display : inline-block;
        width : 300px;
        height : 300px;
        border : none;
        text-align : center;
        margin-left : 5px;
              
    }
    img {
        border : none;
    }
    .best {
        margin-left : 350px;
        width : 1500px;
        height : 550px;
        border : none; 
    }
    .color {
        display : inline-block;
        margin-left : 250px;
    }
    .colorbox {
        display : inline-block;
        width : 20px;
        height : 20px;
    }
    .jav {
        display : inline-block;
    }
    .copy {
	text-align: center;
    }
    .btn { 
    font-size: 20px; 
    padding: 5px; 
    background-color: rgba(255, 255, 255, 1); 
    border: none; 
    border: solid 1px rgba(0, 0, 0, 1); 
    cursor: pointer; 
    }
    .logout{
    text-align: right;
    }
</style>
</head>
<body>
	<header>
	<jsp:include page="/Header.jsp" flush="false"/>
    <div class="color">
        <div class="jav">
          <script>
            var today = new Date();
            var mon = today.getMonth() + 1;
    
            document.write("지금은 " + mon +"월, 이번 시즌의 컬러는 ");
          </script>
        </div>
    <div class="colorbox" style="background-color: #0040FF" title="클래식 블루"></div>
    

    </div>
    </header>
    <section>
    <br><br><br><br><br>
    <div class="box">
        <nav>
        <div class="box1">
        <a href="shop.jsp"><img src ="img2/shop.png" width = "300" height="300" alt="쇼핑몰추천"
            	onmouseover="this.src='img2/shop2.png'"
            	onmouseout="this.src='img2/shop.png'">
        </a>
        </div>

        <div class="box2">
        <a href="youtube.jsp"><img src ="img2/youtube.png" width = "300" height="300" alt="유튜브"
            	onmouseover="this.src='img2/youtube2.png'"
            	onmouseout="this.src='img2/youtube.png'">
        </a>
        </div>

        <div class="box3">
            <a href="lookbooks.jsp"><img src ="img2/lookbook.png" width = "300" height="300" alt="베스트룩"
            	onmouseover="this.src='img2/lookbook2.png'"
            	onmouseout="this.src='img2/lookbook.png'">
            </a>
        </div>

        <div class="box4">
            <a href="brand.jsp"><img src ="img2/brand.png" width = "300" height="300" alt="브랜드"
            	onmouseover="this.src='img2/brand2.png'"
            	onmouseout="this.src='img2/brand.png'">
            </a>
        </div>
        
        <div class="box5">
        <a href="dailylook.jsp" target="_self"><img src ="img2/dailylook.png" width = "300" height="300" alt="데일리룩"
            onmouseover="this.src='img2/dailylook2.png'"
            onmouseout="this.src='img2/dailylook.png'">
        </a>
        </div>
        </nav>
       
    </div>
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br>
    <footer>
        <p class="copy" >Copyright © 2021 박용수 </p>
    </footer>
</body>
</html>