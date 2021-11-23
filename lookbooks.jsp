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
    
    .logo {
        margin-left : 900px;
    }

    h3{
        color : black;
        text-shadow : 2px 2px 2px white, 0 0 25px purple, 0 0 5px gainsboro;
        margin-left : 900px;
    }
    .bigbox {
        background-color : #CEE3F6;
    }
    .box {
        display: inline-block;
        margin-left : 330px;
    }

    .box1 {
        display: inline-block;
    }

    .box2 {
        display: inline-block;
        margin-left : 10px;
    }

    .copy {
	text-align: center;
    }

</style>
<body>
    <header>
    <jsp:include page="/Header.jsp" flush="false"/>
        <h3>Look Book</h3>
    </p>
    </header>

    <section>
    <div class="bigbox">

    <div class="box">
        <details>
        <summary>미니멀</summary>
        미니멀이란 영어로 아주 적은, 최소의라는 뜻으로 장식적 요소를 이체 배제하고 표현을 최소화하는 미니멀리즘을 패션에 접목시킨 것이다.<br>
        즉, 장식적인 패션의 정반대에 있는 것으로 장식적인 것 없이 깔끔한 룩이다.<br>
        대표적인 브랜드로는 Acne Studios, COS 등이 있다.
        </details>
        <div class="box1">
            <img src="img2/min1.png" width='300' height='400' alt="미니멀룩1번">
        </div>

        <div class="box2">
            <img src="img2/min2.png" width='300' height='400' alt="미니멀룩2번">
        </div>

        <div class="box2">
            <img src="img2/min3.png" width='300' height='400' alt="미니멀룩3번">
        </div>

        <div class="box2">
            <img src="img2/min4.png" width='300' height='400' alt="미니멀룩4번">
        </div>
    </div>

    <br><br><br>
    <div class="box">
        <details>
            <summary>스트릿</summary>
            스트릿 패션이란 말 그대로 길거리 패션을 의미한다. 의미가 모호할 수 있는데 길거리에서 편하게 입는, 격식을 갖추지 않은 스타일이다.<br>
            스트릿 패션은 스트릿 문화(힙합, 보드)에 기반한 스타일로 자기 개성대로 자유롭게 입는 스타일이다.<br>
            대표적인 브랜드로는 슈프림, 베이프, 스투시, 팔라스 등이 있다.
        </details>

        <div class="box1">
            <img src="img2/str1.png" width='300' height='400' alt="스트릿룩1번">
        </div>

        <div class="box2">
            <img src="img2/str2.png" width='300' height='400' alt="스트릿룩2번">
        </div>

        <div class="box2">
            <img src="img2/str3.png" width='300' height='400' alt="스트릿룩3번">
        </div>

        <div class="box2">
            <img src="img2/str4.png" width='300' height='400' alt="스트릿룩4번">
        </div>
    </div>

    <br><br><br>
    <div class="box">
        <details>
            <summary>남친룩</summary>
            남친룩이란 요즘 10~20대들이 자주 사용하는 새로운 말로, 보통 여자가 좋아하는 옷 스타일대로 입는 것을 말한다.<br>
            여자들이 좋아할만한 무난한 컬러에 깔끔한 옷들을 매치하는 것을 의미한다고 볼 수 있다.<br>
            남친룩은 대표적인 브랜드가 있는 것이 아니라 자신에게 맞는 사이즈와 컬러를 매치하는 것이 중요하다.
        </details>

        <div class="box1">
            <img src="img2/boy1.png" width='300' height='400' alt="남친룩1번">
        </div>

        <div class="box2">
            <img src="img2/boy2.png" width='300' height='400' alt="남친룩2번">
        </div>

        <div class="box2">
            <img src="img2/boy3.png" width='300' height='400' alt="남친룩3번">
        </div>

        <div class="box2">
            <img src="img2/boy4.png" width='300' height='400' alt="남친룩4번">
        </div>
    </div>

    <br><br><br>
    <div class="box">
        <details>
            <summary>캐주얼</summary>
            캐주얼이란 영어로 태평스러운, 무심한, 평상시의 라는 뜻으로 캐주얼룩은 말그대로 평상시에 입을 수 있는 복장을 의미한다.<br>
            너무 격식을 차리지 않고, 가볍게 입을 수 있는 경쾌한 옷차림을 의미한다.<br>
            캐주얼도 대표적인 브랜드보단 자신이 보다 편하게 입을 수 있는 옷을 입는 것이 좋다.
        </details>

        <div class="box1">
            <img src="img2/cas1.png" width='300' height='400' alt="캐주얼룩1번">
        </div>

        <div class="box2">
            <img src="img2/cas2.png" width='300' height='400' alt="캐주얼룩2번">
        </div>

        <div class="box2">
            <img src="img2/cas3.png" width='300' height='400' alt="캐주얼룩3번">
        </div>

        <div class="box2">
            <img src="img2/cas4.png" width='300' height='400' alt="캐주얼룩4번">
        </div>
    </div>

    <br><br><br>
    <div class="box">
        <details>
            <summary>페미닌</summary>
            페미닌룩이란 여성스러우면서 우아한 분위기가 있는 스타일을 말한다.<br>
            허리나, 가슴 등 인체의 곡선미를 살리는 것을 중요시하고 시대를 반영한 우아함이 포인트이다.<br>
            대표적인 의류는 롱드레스, 원피스, 슈트 등이 있다.
        </details>

        <div class="box1">
            <img src="img2/fem1.png" width='300' height='400' alt="페미닌룩1번">
        </div>

        <div class="box2">
            <img src="img2/fem2.png" width='300' height='400' alt="페미닌룩2번">
        </div>

        <div class="box2">
            <img src="img2/fem3.png" width='300' height='400' alt="페미닌룩3번">
        </div>

        <div class="box2">
            <img src="img2/fem4.png" width='300' height='400' alt="페미닌룩4번">
        </div>
    </div>
    </div>
    </section>

    <footer>
        <p class="copy" >Copyright © 2021 박용수 </p>
    </footer>

</body>
</html>