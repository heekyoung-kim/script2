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
			<h1>화살표 함수</h1>
		</div>
	</div>	
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	// 자바스크립트의 기본자료형
	// 이것에 반대되는 개념이 객체.
	// 종류 : 문자(문자열), 숫자, 불린, null, undefined
	// 특징 : 기본자료형이지만 객체처럼 다룰 수 있다. 기본자료형이지만, 멤버변수(프로퍼티)도 있고, 메소드도 있다.
	
	// 자바의 기본자료형
	// 종류 : 문자, 정수, 실수, 불린.
	// 특징 : 객체가 아니다. 멤버변수, 멤버메소드 등이 없다.
	
	// 자바스크립트 String의 주요 프로퍼티와 메소드
	// 주요프로퍼티
	// length
	var str1 = "홍길동";
	console.log("길이", str1.length);
	
	// 주요메서드
	// split(구분자) : 문자열을 구분자를 기준으로 나누고, 배열에 담아서 반환한다.
	var str2 = "김유신, 이순신, 강감찬";
	var name = str2.split(",");
	console.log(names[0], names[1], names[2]);
	
	// replace(문자, 대체할 문자), replace(정규표현식, 대체할 문자) : 문자 혹으 ㄴ정규표현식에 해당하는 글자를 지정된 자르자로 대체된 문자를 반환한다.
	var str3 = "나는 빨강색 지붕과 빨강색 대문을 가진 빨강색 벽돌집에서 살고 있다.";
	console.log(str3.replace("빨강","노랑")); // 맨 처음것만 바뀜.
	console.log(str3.replace(/빨강/g, "노랑")); // 모든 빨강이 바뀜. g는 글로벌변수를 의미
	
	// substr(start, length) : start부터 length만큼 문자열을 반환한다.
	// substring(start, end) : start부터 end범위의 문자열을 반환한다.
	var str4 = "문자열을 구분자를 기준으로 나누고, 배열에 담아서 반환한다.";
	console.log(str4.substr(10,2));
	console.log(str4.substring(10,13));
	
	//trim() : 문자열의 좌우에 있는 의미없는 공백이 제거된 문자열을 반환한다.
	var str5 = "              abc                def             ";
	console.log("[", str5.trim()),"]";
</script>
</body>
</html>