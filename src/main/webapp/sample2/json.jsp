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

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	/*
		JavaScript의 JSON API
			JSON.stringify(자바스크립트 객체) : json object 구조의 텍스트가 반환된다.
			JSON.stringify(자바스크립트 배열) : json array 구조의 텍스트가 반환된다.
			
			JSON.parse ("json object 구조의 텍스트") : 자바스크립트 객체가 반환된다.
			JSON.parse ("json array 구조의 텍스트") : 자바스크립트 배열이 반환된다.
	*/
	// 자바스크립트 객체
	var employee = {name:"홍길동", dept:'영업1팀', salary:3500000, commissionPct:0.1}
	var employees = [{name:"홍길동", dept:'영업1팀', salary:3500000, commissionPct:0.1},{name:"홍길동", dept:'영업1팀', salary:3500000, commissionPct:0.1}]		
	var jsonText = JSON.stringify(employee);
	var jsonText2 = JSON.stringify(employees);
	
	console.log(employee);
	console.log(jsonText);
	
	console.log(employees);
	console.log(jsonText2);
	
	
	
	
</script>
</body>
</html>