<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h3{
        color : black;
        text-shadow : 2px 2px 2px white, 0 0 25px purple, 0 0 5px gainsboro;
        margin-left : 900px;
    }

    span {
        color : red;
        font-size: 2em;
    }

    p.list {
        margin-left : 380px;
    }

    .box {
        display : inline-block;
        margin-left : 380px;
    }   

    .box1_1 {
        display : inline-block;
    }   

    .box1_2 {
        display : inline-block;
        margin-left : 20px;
    }  

    .logo {
        margin-left : 900px;
    }

    .size {
        font-size : 2em;
    }
    body {
        font-family: sans-serif;
        font-weight : bold;
    }
    .bigbox{
        background-color : #CEE3F6;
    }
    .copy {
	text-align: center;
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
    <header>
    <jsp:include page="/Header.jsp" flush="false"/>
        <h3>패션 유튜버</h3>
    </p>
    </header>
    <section>
    <div class="bigbox">
        <p class="list">인기있는 <span style=color:blue>남자</span> 유튜버</p>
        <div class="box">
            <div class ="box1_1">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/p2hKcd73TFY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <br>패션 입문자들부터 패피들까지 코디법을 알려주는 유튜버 <a class="size" href="https://www.youtube.com/channel/UCcSepD5GRKpskptBW2TSKGg">짱구대디</a>
            </div>

            <div class="box1_2">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/4Nh5HvpO11c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <br>친절한 동네 형처럼 재미있게 알려주는 유튜버 <a class="size" href="https://www.youtube.com/channel/UCKWv0ScT6PpZcpg7ivUVWLA">핏더사이즈</a>
            </div>
        
    
    </div> 
    <br>
        <p class="list">인기있는 <span style=color:pink>여자</span> 유튜버</p>
        <div class="box">
            <div class="box1_1">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/PCXCXr0gmN4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <br>여자 스타일리스트가 추천하는 코디법 <a class="size" href="https://www.youtube.com/channel/UCcRTcy_GuofiJLPLMlVcGxw">앨리스펑크</a>
        </div>

        <div class="box1_2">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/k6-UVBN1ZQE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <br>룩북, 뷰티, 리뷰 다양한 컨텐츠의 유튜버 <a class="size" href="https://www.youtube.com/channel/UCVFmhrld5t1aVlyba1jENrA">솔이sole</a>
        </div>
        </div>
    
    <br>
    
        <p class="list">인기있는 <span style=color:brown>신발</span> 유튜버</p>
        <div class="box">
            <div class="box1_1">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/cTcaW6isMMc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <br>신발을 사랑하고 신발을 소개하는 유튜버 <a class="size" href="https://www.youtube.com/channel/UCOHYlves6oxhyIQBRIIpPTQ">와디의 신발장</a>
            </div>

            <div class="box1_2">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/VGcP41w5Y4Q" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <br>인기있는 신발들로 순위를 매겨주는 유튜버 <a class="size" href="https://www.youtube.com/channel/UCJBVI_x_ecMZMFk-8zkxt8Q">프로그</a>
            </div>
        </div>
    
    <br>

        <p class="list">인기있는 <span style=color:silver>악세사리</span> 유튜버</p>
        <div class="box">
            <div class="box1_1">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/nGay7xS7e7A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <br>한혜연의 고품격 패션 방송 <a class="size" href="https://www.youtube.com/channel/UC5W3wHMAkp6b_8HrhReP5aQ">슈스스 TV</a>
            </div>

            <div class="box1_2">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/dPvCn9wASQA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <br>쥬얼리 디자이너의 악세사리 소개 <a class="size" href="https://www.youtube.com/channel/UCDDg_5VSrUPeS_h3nSqjMTg">Sunday 소현</a> 
            </div>
        </div>
        </div>     
    </section>

    <footer>
        <p class="copy" >Copyright © 2021 박용수 </p>
    </footer>
    

</body>
</html>