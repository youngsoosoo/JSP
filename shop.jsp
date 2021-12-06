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

    h3{
        color : black;
        text-shadow : 2px 2px 2px white, 0 0 25px purple, 0 0 5px gainsboro;
        margin-left : 900px;
    }

    span {
        margin-left:400px;
    }
    
    .logo {
        margin-left : 900px;
    }

    .box {
        display : inline-bolck;
        width : 1200px;
        height : 300px;        
        margin-left : 350px;
    }

    .box1_1 {
        display : inline-bolck;
        width : 1400px;
        height : 100px;         
    }

    .box2 {
        display : inline-block;
        margin-left : 50px;
    }

    .box2_2 {
        display : inline-block;
        margin-left : 70px;        
    }

    .hiv
     {
        display : inline-block;
        text-align : center;
        width : 400px;
        height : 100px;        
        margin-left : 80px;
    }

    .mus
     {
        display : inline-block;
        text-align : center;
        width : 450px;
        height : 100px;        
        margin-left : 180px;
    }

    .wcon
     {
        display : inline-block;
        text-align : center;
        width : 400px;
        height : 100px;        
        margin-left : 90px;
    }

    .cm
     {
        display : inline-block;
        text-align : center;
        width : 400px;
        height : 100px;        
        margin-left : 210px;
    }

    .must
     {
        display : inline-block;
        text-align : center;
        width : 450px;
        height : 100px;        
        margin-left : 70px;
    }

    .feelw
     {
        display : inline-block;
        text-align : center;
        width : 450px;
        height : 100px;        
        margin-left : 145px;
    }

    .nike2
     {
        display : inline-block;
        text-align : center;
        width : 450px;
        height : 100px;        
        margin-left : 80px;
    }

    .abc2
     {
        display : inline-block;
        text-align : center;
        width : 450px;
        height : 100px;        
        margin-left : 140px;
    }

    .big {
        font-size: 2em;
    }

    .bigbox{
        background-color : #CEE3F6;
    }

    .copy {
	text-align: center;
    }

</style>
</head>
<body>
	<header>
    <jsp:include page="/Header.jsp" flush="false"/>
        <h3>쇼핑몰 추천</h3>
    </header>
    <section>
    <div class="bigbox">
<span><a class=big><mark>종합</mark></a> 쇼핑몰 (의류, 뷰티, 악세사리)</span>
<div class="box">
    <div class="box2">
    <a href="https://www.hiver.co.kr"><img src="img2/hiver.png" alt='하이버'
                          onmouseover="this.src='img2/hiver2.PNG'"
                          onmouseout="this.src='img2/hiver.png'">
    </a>
    </div>
    <div class="box2_2">
    <a href="https://store.musinsa.com/app/"><img src="img2/musinsa.png" alt='무신사'
                           onmouseover="this.src='img2/musinsa2.PNG'"
                           onmouseout="this.src='img2/musinsa.png'">
    </a>
    </div>
    <div class="box1_1">
    <div class="hiv">
        브랜드와 쇼핑몰을 한눈에! 하이버
    </div>
    <div class="mus">
        10대~20대 트렌드 브랜드와 아이템 한가득! 무신사스토어
    </div>
    </div>
</div>
    <div class="box">
        <div class="box2">
        <a href="https://www.wconcept.co.kr/?utm_source=google&utm_medium=Brand_sa-pc&utm_term=W%EC%BB%A8%EC%85%89&utm_campaign=mall&adfrom=google_keywordPC&gclid=CjwKCAjw2uf2BRBpEiwA31VZj15E4WIQPvw2mbMpFWynVijmbqPB4NChoWLd9j2s-X-eiTHbxWJP7hoCpWsQAvD_BwE">
        <img src="img2/wconcept.png" alt='w컨셉'
                           onmouseover="this.src='img2/wconcept2.PNG'"
                           onmouseout="this.src='img2/wconcept.png'">
        </a>
    </div>
        <div class="box2_2">
            <a href="https://www.29cm.co.kr/home/?NaPm=ct%3Dkbacp1qv%7Cci%3Dcheckout%7Ctr%3Dds%7Ctrx%3D%7Chk%3Dd9bea9125b7d35ea6e7d0f8ecc6fab7e96d4f0d5">
            <img src="img2/29cm.png" alt="29cm"
            onmouseover="this.src='img2/29cm2.PNG'"
            onmouseout="this.src='img2/29cm.png'"></a>
        </div>
        <div class="box1_1">
            <div class="wcon">
                프리미엄 온라인 셀렉숍 여자에게 강추! W컨셉
            </div>      
            <div class="cm">
                온라인 셀렉트샵 29CM
            </div>  
        </div>
    </div>
    <span><a class="big"><mark>하이엔드</mark></a> 쇼핑몰</span>
    <div class="box">
    <div class="box2">
        <a href="https://mustit.co.kr/"><img src="img2/mustit.png" alt="Must it"
                             onmouseover="this.src='img2/mustit2.PNG'"
                             onmouseout="this.src='img2/mustit.png'">
        </a>
        </div>
    <div class="box2_2">
        <a href="https://www.feelway.com/index.php?ACE_REF=adwords_g&ACE_KW=%ED%95%84%EC%9B%A8%EC%9D%B4&gclid=Cj0KCQjwiYL3BRDVARIsAF9E4GcU5hoib192Y8io2HXVMSEsVM2K6jEJoABaBqR9TPTYNd51vGMvlBIaAgLqEALw_wcB">
        <img src="img2/feelway.png" alt="feel way"
        onmouseover="this.src='img2/feelway2.PNG'"
        onmouseout="this.src='img2/feelway.png'">
        </a>
    </div>
    <div class="box1_1">
    <div class="must">
        하이엔드 브랜드들과 트렌드 아이템이 한곳에! 머스트잇
    </div>
    <div class="feelw">
        국내 최대 규모 온라인 명품샵! Feel Way
    </div>
    </div>
</div>
<span><a class="big"><mark>신발</mark></a>쇼핑몰</span>
    <div class="box">
        <div class="box2">
            <a href="https://www.nike.com/kr/ko_kr/">
            <img src="img2/nike.png" alt="nike"
            onmouseover="this.src='img2/nike2.PNG'"
            onmouseout="this.src='img2/nike.png'"></a>
        </div>
        <div class="box2_2">
            <a href="https://abcmart.a-rt.com/?NaPm=ct%3Dkbaf47ky%7Cci%3Dcheckout%7Ctr%3Dds%7Ctrx%3D%7Chk%3De192bc2e79cbfaf81ec1517cdf882647a4160538">
            <img src="img2/abc.png" alt="abc마트"
            onmouseover="this.src='img2/abc2.PNG'"
            onmouseout="this.src='img2/abc.png'"></a>
        </div>
        <div class="box1_1">
            <div class="nike2">
                나이키와 같은 유명 브랜드 온라인 쇼핑몰!
            </div>

            <div class="abc2">
                수많은 브랜드의 신발들을 볼 수 있는 ABC-Mart!
            </div>
        </div>
    </div>
    </div>
    </section>

    <footer>
        <p class="copy" >Copyright © 2021 박용수 </p>
    </footer>
</body>
</html>