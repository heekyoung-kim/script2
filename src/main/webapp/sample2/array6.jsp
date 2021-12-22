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
			<h1>배열의 reduce() 메소드</h1>
			<p>빅데이터에서 중요한 개념.</p>
		</div>
	</div>	
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	/*
		배열.reduce(함수) : 배열의 요소를 처리해서 최종적으로 값 하나를 반환한다.
		배열.reduct(function(total, value){return total + value;})
			total의 초기값은 0이다.
			지정된 함수의 반환값이, 다음 번 실행되는 함수의 total로 전달된다.
			value는 배열의 값이 순서대로 전달된다.
	*/
	
	var numbers = [80, 100, 20, 50, 70];
	
	var total = numbers.reduce(function(subtotal, num){ // subtotal = 0 , num = numbers배열 안의 값이 하나씩 차례대로 들어옴.
		return subtotal + num 						    // subtotal + num 해진 값이 다시 function의 subtotal에 들어가 다음 num과 또 더해짐.
	});
	console.log(total);	
		
</script>
</body>
</html>