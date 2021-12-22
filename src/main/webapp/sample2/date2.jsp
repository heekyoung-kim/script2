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
		<div class="col ">
			<div class="mb-3 p-3" id="date-button-group">
				<button class="btn btn-outline-secondary btn-sm active" onclick="set1Week()" id="btn-1-week">1주일</button>
				<button class="btn btn-outline-secondary btn-sm" onclick="set1Months()" id="btn-1-months">1달</button>
				<button class="btn btn-outline-secondary btn-sm" onclick="set3Months()" id="btn-3-months">3개월</button>
			</div>
			<div class="mb-3 ">
				<input type="date" id="from-date" name="from" readonly> ~ <input type="date" id="end-date" name="end" readonly>
			</div>
		</div>
	</div>	
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/moment@2.29.1/moment.min.js"></script>
<script type="text/javascript">
	var from = document.getElementById("from-date");
	var end = document.getElementById("end-date");
	
	
	function set1Week() {
		from.value = moment().add(-1,'w').format("YYYY-MM-DD");
		end.value = moment().format("YYYY-MM-DD");	
		clearActiveDateButton();
		document.getElementById("btn-1-week").classList.add('active')
	}
	
	function set1Months() {
		from.value = moment().add(-1,'M').format("YYYY-MM-DD");
		end.value = moment().format("YYYY-MM-DD");	
		clearActiveDateButton();
		document.getElementById("btn-1-months").classList.add('active')
	}
	
	function set3Months() {
		from.value = moment().add(-3,'M').format("YYYY-MM-DD");
		end.value = moment().format("YYYY-MM-DD");	
		clearActiveDateButton();
		document.getElementById("btn-3-months").classList.add('active')
	}

	function clearActiveDateButton(){
		var buttons = document.querySelectorAll("#date-button-group button");
		buttons.forEach(button => button.classList.remove('active'));
	}
	
	set1Week();
</script>
</body>
</html>