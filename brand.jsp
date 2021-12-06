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

    ul li {
        display: inline;
    }

    .high {
        margin-left : 700px;
    }

    .sport {
        margin-left : 800px;
    }

    h3 {
        color : black;
        text-shadow : 2px 2px 2px white, 0 0 25px purple, 0 0 5px gainsboro;
        margin-left : 900px;
    }

    .logo {
        margin-left : 900px;
    }

    .bigbox{
        background-color : #CEE3F6;
    }

    .box {
        display : inline-block;
        margin-left : 150px;
        
    }

    .box1 {
        display : inline-block;
        margin-left : 40px;
    }

    .box2 {
        display : inline-block;
        margin-left:10px;
    }

    .box3 {
        display : inline-block;
        margin-left:280px;
    }

    .copy {
	text-align: center;
    }
</style>

<body>
    <header>
    <jsp:include page="/Header.jsp" flush="false"/>
    </header>
    <section>
    <div class="bigbox">
    <div class="box">
    <article>
    <details>
        <summary>1. 브랜드란?</summary>
        브랜드란 영어로 상표라는 뜻으로 패션계열에서도 같은 의미이다.<br>
        브랜드는 특정한 판매인의 제품 및 서비스를 구분하는데 쓰이는 명칭이나 기호, 디자인 등을 일컫는 말이다.<br>
        말로 표현가능한 것을 브랜드 명 또는 메이커라 하고, 특정 기호나 디자인은 브랜드 마크 또는 상표라고 한다.<br>
        브랜드는 명품과도 많은 면에서 상호호환한다.
    </details>
    <details>
        <summary>2. 브랜드 제품의 장점</summary>
        브랜드 제품의 장점이라하면 매장에가서 직접 입어보고 구매할 수 있기 때문에 접근성이 높다는 점이있다.<br>
        또한 트렌드 반영이 비교적 빠르고, 퀄리티가 보세(브랜드가 없는) 의류보다 좋습니다.
    </details>
    <details>
        <summary>3. 브랜드 제품의 단점</summary>
        브랜드 제품의 단점은 일반 도매스틱이나 보세에 비해 가격이 비싸다는 점입니다.<br>
        또한 트렌드 반영이 높기 때문에 많은 사람들이 선호하므로 자신과 같은 제품을 사용하는 사람이 많을 수도 있다는점이 있습니다.
    </details>
    </article>

    <ul>
        <li>가성비 브랜드(스파 브랜드)</li>
       
        <li class="high">하이엔드 브랜드</li>
        
    </ul>

                
        <div class="box1">
        <a href="https://store-kr.uniqlo.com/"><img src="img2/uni.png" width='300' height='300' alt="유니클로" title="유니클로">
        </a></div>
        <div class="box2">
        <a href="http://spao.elandmall.com/"><img src="img2/spao.png" width='300' height='300' alt="스파오" title="스파오">
        </a></div>

        <div class="box3">
        <a href="https://www.thombrowne.com/kr"><img src="img2/thom.png" width='300' height='300' alt="톰브라운" title="톰브라운">
        </a></div>
        <div class="box2">
        <a href="https://www.gucci.com/"><img src="img2/guc.png" width='300' height='300' alt="구찌" title="구찌">
        </a></div>
    </div>

    
    <div class ="box">
        <br><br>
        <ul>
            <li>캐주얼 브랜드</li>
    
            <li class="sport">스포츠 브랜드</li>
        </ul>

        <div class="box1">
        <a href="https://www.ralphlauren.co.kr/ko"><img src="img2/polo.png" width='300' height='300' alt="폴로" title="폴로">
        </a></div>
        <div class="box2">
        <a href="https://www.cosstores.com/"><img src="img2/cos.png" width='300' height='300' alt="코스" title="코스">
        </a></div>

        <div class="box3">
        <a href="https://www.nike.com/kr/ko_kr/"><img src="img2/nikelogo.png" width='300' height='300' alt="나이키" title="나이키">
        </a></div>

        <div class="box2">
        <a href="https://shop.adidas.co.kr/"><img src="img2/adidas.png" width='300' height='300' alt="아디다스" title="아디다스">
        </a></div>
    </div>

    <div class ="box">
        <br><br>
        <ul>
            <li>미니멀 브랜드</li>
    
            <li class="sport">페미닌 브랜드</li>
        </ul>

        <div class="box1">
        <a href="https://theknitcompany.com/"><img src="img2/knit.png" width='300' height='300' alt="더니트컴퍼니" title="더니트컴퍼니">
        </a></div>
        <div class="box2">
        <a href="https://www.maisonmargiela.com/kr"><img src="img2/masion.png" width='300' height='300' alt="마르지엘라" title="마르지엘라">
        </a></div>

        <div class="box3">
        <a href="https://www.celine.com/en-int/home"><img src="img2/celine.png" width='300' height='300' alt="셀린느" title="셀린느">
        </a></div>

        <div class="box2">
        <a href="http://mixxo.elandmall.com/main/initMain.action"><img src="img2/mixxo.png" width='300' height='300' alt="미쏘" title="미쏘">
        </a></div>
    </div>
    </div>
    </section>

    <footer>
        <p class="copy" >Copyright © 2021 박용수 </p>
    </footer>

</body>
</html>