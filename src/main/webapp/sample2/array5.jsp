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
			<h1>배열의 map() 메소드</h1>
			<p>자바스크립트에서 map()이 들어가면 원본값을 가공(변형)하는 작업을 의미한다.</p>
		</div>
	</div>	
	<div class="row mt-3 mb-3 bg-light p-3">
		<div class="col ">
			<p>	
			/* 배열.map(함수) : 지정된 함수가 반환하는 값이 포함된 배열을 생성한다.*/<br>
	// 자바스크립트의 객체 형태 {name:value} <br>
	// 학생들의 성적정보(이름, 국어점수, 영어점수, 수학점수)가 저장된 배열<br>	
	var data =[<br>
		{name:"홍길동", kor:100, eng:70, math:70},<br>
		{name:"김유신", kor:90, eng:100, math:60},<br>
		{name:"강감찬", kor:90, eng:60, math:40},<br>
		{name:"이순신", kor:70, eng:80, math:70},<br>
		{name:"류관순", kor:80, eng:90, math:80}<br>
	];<br>
	
	// 학생들의 성적 정보 배열 -> 시험 본 학생들의 이름이 저장된 배열<br>
	// 원본배열을 이용해서 시험을 본 학생들이 이름이 저장된 배열 생성하기<br>
	var names = data.map(function(student, index){<br>
		return student.name;<br>
	});<br>

	// 원본배열을 이용해서 시험을 본 학생들이 이름이 저장된 배열 생성하기<br>
	names = data.map(student => student.name);<br>
	console.log("학생이름",names);	<br>
	
	// 원본 배열을 이용해서 이름, 총점, 평균이 저장된 배열 생성하기<br>	
	// scores 안에 score라는 객체를 하나 만들어서 반환.<br>
	var socres = data.map(function(student){<br>
		var score = {<br>
			name : student.name,<br>
			total : student.kor + student.eng + student.math,<br>
			average : (student.kor + student.eng + student.math)/3<br>
		};<br>
		return score<br>
	});<br>
	
	console.log("성적", socres);<br>
	
	// 원본배열을 이용해서 평균점수가 60점 이상인 합격자 명단이 저장된 배열 생성하기 ----> [홍길동, 이순신, 류관순]<br>
	var passedNames = data.map(function(student){<br>
		var score = {<br>
			name : student.name,<br>
			average : (student.kor + student.eng + student.math)/3<br>
		};<br>
		return score;	<br>
	})<br>
	.filter(function(item){<br>
		return item.average >= 80;<br>
	})<br>
	.map(function(item){<br>
		return item.name<br>
	})<br>
	
	// 화살표 함수를 이용해서 시험을 통과한 학생들의 이름을 획득하기.<br>
	passedNames = data.map(item => {<br>
		return {<br>
				name:item.name, <br>
				average: (item.kor + item.eng + item.math)/3<br>
			}<br>
		})<br>
		.filter(item => item.average >= 80)<br>
		.map(item => item.name)<br>
		.join(", ");	<br>
	// 메소드 체이닝.<br>
	// var 결과 = 배열.map(함수).filter(함수).map(함수).join(구분자)<br>
	
	console.log("합격자 명단", passedNames);
	</p>
		</div>
	</div>	
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	/*
	   배열.map(함수) : 지정된 함수가 반환하는 값이 포함된 배열을 생성한다.	
	*/
	// 자바스크립트의 객체 형태 {name:value} 
	// 학생들의 성적정보(이름, 국어점수, 영어점수, 수학점수)가 저장된 배열	
	var data =[
		{name:"홍길동", kor:100, eng:70, math:70},
		{name:"김유신", kor:90, eng:100, math:60},
		{name:"강감찬", kor:90, eng:60, math:40},
		{name:"이순신", kor:70, eng:80, math:70},
		{name:"류관순", kor:80, eng:90, math:80}
	];
	
	// 학생들의 성적 정보 배열 -> 시험 본 학생들의 이름이 저장된 배열
	// 원본배열을 이용해서 시험을 본 학생들이 이름이 저장된 배열 생성하기
	var names = data.map(function(student, index){
		return student.name;
	});

	// 원본배열을 이용해서 시험을 본 학생들이 이름이 저장된 배열 생성하기
	names = data.map(student => student.name);
	console.log("학생이름",names);	
	
	// 원본 배열을 이용해서 이름, 총점, 평균이 저장된 배열 생성하기	
	// scores 안에 score라는 객체를 하나 만들어서 반환.
	var socres = data.map(function(student){
		var score = {
			name : student.name,
			total : student.kor + student.eng + student.math,
			average : (student.kor + student.eng + student.math)/3
		};
		return score
	});
	
	console.log("성적", socres);
	
	// 원본배열을 이용해서 평균점수가 60점 이상인 합격자 명단이 저장된 배열 생성하기 ----> [홍길동, 이순신, 류관순]
	var passedNames = data.map(function(student){
		var score = {
			name : student.name,
			average : (student.kor + student.eng + student.math)/3
		};
		return score;	
	})
	.filter(function(item){
		return item.average >= 80;
	})
	.map(function(item){
		return item.name
	})
	
	// 화살표 함수를 이용해서 시험을 통과한 학생들의 이름을 획득하기.
	passedNames = data.map(item => {
		return {
				name:item.name, 
				average: (item.kor + item.eng + item.math)/3
			}
		})
		.filter(item => item.average >= 80)
		.map(item => item.name)
		.join(", ");	
	// 메소드 체이닝.
	// var 결과 = 배열.map(함수).filter(함수).map(함수).join(구분자)
	
	console.log("합격자 명단", passedNames);
	
	
	
</script>
</body>
</html>