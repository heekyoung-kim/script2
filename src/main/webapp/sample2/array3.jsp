<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<input type="text" class="form-control w-50" name="score" value="90"/>
			<input type="text" class="form-control w-50" name="score" value="70"/>
			<input type="text" class="form-control w-50" name="score" value="60"/>
			<input type="text" class="form-control w-50" name="score" value="50"/>
			<input type="text" class="form-control w-50" name="score" value="100"/>
			<input type="text" class="form-control w-50" name="score" value="80"/>
			<input type="text" class="form-control w-50" name="score" value="70"/>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	var elements = document.querySelectorAll('[name=score]');
	// 화살표를 활용한 forEach 구문.
	var totalScore = 0;
	elements.forEach(el => totalScore +=  parseInt(el.value));
	console.log("합계", totalScore);	

	/*
	elements.forEach(function(elemnet){
		var score = parseInt(element.value);
		totalScore += score;
	}); // for문을 직접 잘 안쓰고 이렇게 자바스크립트로 대부분 구현.
	*/
	
</script>
</body>
</html>