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
         <h1>장바구니</h1>
      </div>
   </div>
   <div class="row mb-3">
      <div class="col">
         <table class="table" id="table-cart-items">
            <thead>
               <tr>
                  <th><input type="checkbox" id="checkbox-toggle-checked" checked/></th>
                  <th>상품명</th>
                  <th>가격</th>
                  <th>수량</th>
                  <th>구매가격</th>
                  <th></th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td><input type="checkbox" name="itemNo" value="10" checked/></td>
                  <td>iphone 13 pro max</td>
                  <td><strong id="price-10">1,500,000</strong> 원</td>
                  <td><input type="text" name="amount" id="amount-10" value="1" style="width: 50px;"/> <button data-item-no="10" data-btn="update">변경</button></td>
                  <td><strong class="text-danger" id="order-price-10" data-order-price="1500000">1,500,000</strong> 원</td>
                  <td><button data-item-no="10" data-btn="delete">삭제</button></td> <%-- data-item-no="10" 혹은 적절한 id로 관계 맺어주기--%>
               </tr>
               <tr>
                  <td><input type="checkbox" name="itemNo" value="20" checked/></td>
                  <td>갤럭시z 플립 3</td>
                  <td><strong>1,700,000</strong> 원</td>
                  <td><input type="text" name="amount" id="amount-20"  value="1" style="width: 50px;"/> <button data-item-no="20" data-btn="update">변경</button></td>
                  <td><strong class="text-danger" data-order-price="1700000">1,700,000</strong> 원</td>
                  <td><button  data-item-no="20" data-btn="delete">삭제</button></td>
               </tr>
               <tr>
                  <td><input type="checkbox" name="itemNo" value="30" checked/></td>
                  <td>apple watch 7</td>
                  <td><strong>600,000</strong> 원</td>
                  <td><input type="text" name="amount" id="amount-30"  value="1" style="width: 50px;"/> <button data-item-no="30" data-btn="update">변경</button></td>
                  <td><strong class="text-danger" data-order-price="600000">600,000</strong> 원</td>
                  <td><button data-item-no="30" data-btn="delete">삭제</button></td>
               </tr>
            </tbody>
            <tfoot>
            	<tr>
            		<td colspan="5" class="text-end">총구매가격</td>
            		<td><strong id="total-order-price"></strong>원</td>
            	</tr>
            </tfoot>
         </table>
      </div>
   </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
		// 1. <table id="table-cart-items">안에 있는 <strong class="text-danger">1,000,000</strong>을 전부 선택한다.
		// 2. strong 엘리먼트의 텍스트 컨텐츠를 조회해서 숫자로 바꾼다.
		// 3. 합계를 구해서 <strong id = "total-order-price"></strong>에 텍스트컨텐츠를 추가한다.
		
		// 총구매가격 계산해서 반영하기.
		var totalOrderPrice = 0;
		$("strong[data-order-price]").each(function(){
			var orderPrice = parseInt($(this).data('order-price'));
			totalOrderPrice += orderPrice;
		})
		$("#total-order-price").text(totalOrderPrice);
		
		// 구매 수량을 변경하면 구매가격을 계산해서 반영하기.
		
		// 총 구매가격을 갱신하는 함수
		// 
		
</script>
</body>
</html>