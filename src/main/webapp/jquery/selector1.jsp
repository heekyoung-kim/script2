<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    <title></title>
</head>
<body>
<div class="container">    
	<div class="row mb-3">
		<div class="col">
			<h1 id="page-title">jQuery 선택자</h1>
			<p>jQuery 선택자 연습하기</p>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<h3 >기본 선택자</h3>
			<p>*,#id, .class, tag 등이 있다.</p>
		</div>
		<div class="col" id="box-filter">
			<h3>기본 필터 선택자</h3>
			<p>:first, :last, :even, :odd 등이 있다.</p>
			<p>:first, :last, :even, :odd 등이 있다.</p>
			<p>:first, :last, :even, :odd 등이 있다.</p>
			<p>:first, :last, :even, :odd 등이 있다.</p>
			<p>:first, :last, :even, :odd 등이 있다.</p>
			<p>:first, :last, :even, :odd 등이 있다.</p>
		</div>
		<div class="col" id="box-child">
			<h3>자식, 자손, 형제 선택자</h3>
			<p>선택자 &gt; 선택자, 선택자, 선택자, 선택자 ~ 선택자</p>
			<div>
				<h4>자식, 자손, 형제 엘리먼트</h4>
				<p>자식선택자는 DOM tree에서 바로 아래에 위치하고 있는 엘리먼트를 말한다.</p>
				<p>자손선택자는 DOM tree에서 아래에 위치하고 있는 엘리먼트를 말한다.</p>
				<p>형제선택자는 DOM tree에서 부모엘리먼트가 서로 같은 엘리먼트를 말한다.</p>
			</div>	
		</div>
	</div>
	<div class="row mb-3">
		<div class="col" id="box-filter-1">
			<h3>자식필터 선택자</h3>
			<p>:first-child, :last-child, nth-child(no) 등이 있다.</p>
			<h4>음료 메뉴</h4>
			<ul>
				<li>콜라</li>
				<li>사이다</li>
				<li>물</li>
			</ul>
			<h4>커피 메뉴</h4>
			<ul>
				<li>아메리카노</li>
				<li>카푸치노</li>
				<li>라떼</li>
			</ul>
			<h4>과일 메뉴</h4>
			<ul>
				<li>사과</li>
				<li>오렌지</li>
				<li>바나나</li>
			</ul>
		</div>
		<div class="col" id="box-filter-2">
			<h3>순서필터 선택자</h3>
			<p>:eq(n), :gt(n), :lt(n)등이 있다.</p>
			<div id="box-content">
				<p>0번째 p입니다</p>
				<p>1번째 p입니다</p>
				<p>2번째 p입니다</p>
				<p>3번째 p입니다</p>
				<p>4번째 p입니다</p>
				<p>5번째 p입니다</p>
				<p>6번째 p입니다</p>
				<p>7번째 p입니다</p>
				<p>8번째 p입니다</p>
			</div>
		</div>
		<div class="col" id="box-filter-3">
			<h3>기타필터 선택자</h3>
			<p>:has(선택자), :contains(텍스트), :not(선택자) 등이 있다.</p>
			<div>
				<p><span>100,000</span>원</p>
				<p><span class="text-danger">280,000</span>원</p>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	// 아이디 선택자.
	$("#page-title").css("color","red");
	// 클래스 선택자
	$(".col").css('border','1px solid black')
	// 태그 선택자
	$("h3").css("color","green")
	
	// 기본필터선택자 jquery 안에 있는 조작함수 
	// 첫번째 col
	$(".col:first").css("background-color","yellow");
	// 마지막 col
	$(".col:last").css("background-color","lightgray");
	// 짝수 p
	$("#box-filter p:even").css("color","red");
	
	// 자식, 자손, 형제 선택자
	$("#box-child> p").css('color','red');
	$("#box-child p").css('text-decoration','underline');
	// +, ~ 는 사용빈도수가 낮음.
	$("#box-child h4 + p").css('background-color','yellow'); // h4엘리먼트 바로 다음에 위치한 p엘리먼트
	$("#box-child h4 ~ p").css('border','1px solid red');	 // h4엘리먼트 다음에 위치하고 있는 모든 p엘리먼트들	
	
	$("li:first").css("color","red"); // 콜라
	$("li:last").css("color","blue"); // 바나나
	// 자식필터 선택자
	$("li:first-child").css("background-color","yellow");
	$("li:last-child").css("background-color","lightgray");
	$("li:nth-child(2)").css("background-color","lightblue");
	
	// 순서 필터 선택자
	$('#box-content p:eq(0)').css("color","orange");
	$('#box-content p:eq(1)').css("color","blue");
	$('#box-content p:eq(2)').css("color","green");
	$('#box-content p:gt(3)').css("border","1px solid red");  // 3보다 큰것
	$('#box-content p:lt(3)').css("border","1px solid blue"); // 3보다 작은 것
	// 해당 선택자 삭제
	//$("p:last").remove(); 너무 위험.
	$("#box-filter-3 div p:last").remove();
	$("#box-filter-3 > div > p:eq(1)").remove();
	$("#box-filter-3 p:has('span.text-danger')").remove();
	
	// 기타 필터 선택자
	
	</script>
</body>
</html>