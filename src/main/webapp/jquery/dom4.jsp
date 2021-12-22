        
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
			<h1>클래스 조작하기</h1>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col-6">
			<ul class="list-group" id="ul-dept-list">
				<li class="list-group-item">영업1팀</li>
				<li class="list-group-item">영업2팀</li>
				<li class="list-group-item">영업3팀</li>
				<li class="list-group-item">영업4팀</li>
			</ul>
		</div>
		<div class="col-6">
			<ul class="list-group-2" id="ul-dept-list-2">
				<li class="list-group-item">영업1팀</li>
				<li class="list-group-item">영업2팀</li>
				<li class="list-group-item">영업3팀</li>
				<li class="list-group-item">영업4팀</li>
			</ul>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<div class="card">
				<div class="card-header">컨퍼런스 참가자 현황</div>
				<div class="card-body">
					<h5 class="card-title">사원 리스트</h5>
					<ul class="list-group" id="ul-user-list">
						<li class="list-group-item">홍길동</li>
						<li class="list-group-item">김유신</li>
						<li class="list-group-item">강감찬</li>
						<li class="list-group-item">이순신</li>
						<li class="list-group-item">류관순</li>
						<li class="list-group-item">안중근</li>
					</ul>
				</div>
				<div class="card-body">
					<button class="btn btn-outline-dark" id="btn-add-emp">추가</button>
					<button class="btn btn-outline-dark" id="btn-up-emp">삭제</button>
				</div>
				<div class="card-body">
					<h5 class="card-title">참가 확정 사원 리스트</h5>
					<ul class="list-group" id="ul-user-list-2">
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	// 선택된 엘리먼트에 class active시키고 나머지는 active지우기.	
	$("#ul-dept-list li").click(function(){
		$(this).addClass('active').siblings().removeClass('active');		
	})

	// 선택된 엘리먼트 토글시키기
	$("#ul-dept-list-2 li").click(function(){
		$(this).toggleClass('active').siblings().removeClass('active');		
	})
	

	
	
	
</script>
</body>
</html>

    