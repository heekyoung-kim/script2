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
			<h1>배열의 기본메소드</h1>
		</div>
	</div>	
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	// 자바스크립트의 배열
	// 가변길이 배열이다. 다양한 메소드를 제공한다.
	// 프로퍼티
	//	  length : 배열의 길이를 반환한다.
	// 메소드
	// 	  push(값)      : 배열의 끝에 새 값을 추가한다.
	// 	  pop()        : 배열의 맨 마지막값을 삭제하고, 그 값을 반환
	// 	  shift()      : 배열의 맨 처음값을 삭제하고 그 값을 반환한다.
	// 	  unshift(값)   : 배열의 맨 처음에 새 값을 추가한다.
	//    splice(index, many, 값,값....)  : 특정 위치에 있는 값을 삭제할 때 사용.
	//					index : 값을 삭제하거나 추가할 위치를 지정한다.
	//					many : 삭제할 갯수를 지정하낟. 0을 입력하면 삭제하지 않는다.
	//					값 : 추가할 값을 지정, 생략하면 삭제만 할 수 있음.
	// 	  join(연결문자)  : 배열의 값을 지정된 연결문자로 연결한 문자열로 반환한다.
	
	
	// 배열의 특정 위치에 추가/삭제하기
	var items2 = ["고구마","사과","바나나","감자"];
	
	// '바나나'삭제하기
	// items2.splice(2,1)					["고구마","사과","감자"]		
	// '바나나','감자' 삭제하기
	// items2.splice(2,2)					["고구마","사과"]	
	// 사과를 삭제하고 그 자리에 호박 추가하기
	// items2.splice(1,1,'호박')				["고구마","호박","바나나","감자"]		
	// 사과를 삭제하지 않고 그 자리에 호박 추가하기
	// items2.splice(1,0,'호박')				["고구마","호박","사과","바나나","감자"]	
	
	// 지정된 위치의 값 하나 삭제하기.
	// 배열.splice(index, 1);
</script>
</body>
</html>