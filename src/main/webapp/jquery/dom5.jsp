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
                  <th style="width: 5%;"><input type="checkbox" id="checkbox-toggle-checked" checked/></th>
                  <th style="width: 40%;">상품명</th>
                  <th style="width: 15%;">가격</th>
                  <th style="width: 15%;">수량</th>
                  <th style="width: 15%;">구매가격</th>
                  <th style="width: 10%;"></th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td><input type="checkbox" name="itemNo" value="10" checked/></td>
                  <td>iphone 13 pro max</td>
                  <td><strong id="price-10">1,500,000</strong> 원</td>
                  <td><input type="number" name="amount" id="amount-10" value="1" style="width: 50px;"/> <button data-item-no="10" data-btn="update">변경</button></td>
                  <td><strong class="text-danger" id="order-price-10" data-order-price="1500000">1,500,000</strong> 원</td>
                  <td><button data-item-no="10" data-btn="delete">삭제</button></td> <%-- data-item-no="10" 혹은 적절한 id로 관계 맺어주기--%>
               </tr>
               <tr>
                  <td><input type="checkbox" name="itemNo" value="20" checked/></td>
                  <td>갤럭시z 플립 3</td>
                  <td><strong id="price-20" >1,700,000</strong> 원</td>
                  <td><input type="number" name="amount" id="amount-20"  value="1" style="width: 50px;"/> <button data-item-no="20" data-btn="update">변경</button></td>
                  <td><strong class="text-danger"  id="order-price-20" data-order-price="1700000">1,700,000</strong> 원</td>
                  <td><button  data-item-no="20" data-btn="delete">삭제</button></td>
               </tr>
               <tr>
                  <td><input type="checkbox" name="itemNo" value="30" checked/></td>
                  <td>apple watch 7</td>
                  <td><strong id="price-30">600,000</strong> 원</td>
                  <td><input type="number" name="amount" id="amount-30"  value="1" style="width: 50px;"/> <button data-item-no="30" data-btn="update">변경</button></td>
                  <td><strong class="text-danger" id="order-price-30"  data-order-price="600000">600,000</strong> 원</td>
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
		$("#total-order-price").text(totalOrderPrice.toLocaleString());
		
		
//	연습	var orderPrice = 0;
//			var Price = parseInt($(this).data('price'))
//			var amount = 

		// 구매 수량을 변경하고 변경버튼을 클릭시 구매가격을 계산해서 반영하기.
		$("button[data-btn='update']").click(function(){
			// data-item-no로 관계맺어주기.
			var itemNo = $(this).data('item-no');       				// <button data-item-no="숫자" data-btn="update">
			// 가격조회
			var price = parseInt($("#price-"+itemNo).text().replace(/,/g, ''));	//<strong id="price-10">1,500,000</strong>
			// 구매수량 조회
			var amount = parseInt($("#amount-"+itemNo).val());
			// 구매가격 계산
			var orderPrice = price*amount
			
			//구매가격 표시하기
			$("#order-price-"+itemNo).attr("data-order-price",orderPrice).text(orderPrice.toLocaleString())
		})
		
		// 삭제버튼을 클릭 시 해당 아이템을 삭제하기
		$("button[data-btn='delete']").click(function(){
			$(this).closest("tr").remove();				// 이 jquery집합객체에 가장 가까운 tr을 찾아 삭제.
		})
		
		// 전체 선택/해제 체크박스를 변경하면 장바구니 아이템의 체크박스가 선택/해제되게 하기
		$("#checkbox-toggle-checked").change(function(){		// checkbox상태가 바뀔때마다
			$(":checkbox[name='itemNo']").prop('checked',$(this).prop('checked'));
		})	
		
		// 장바구니 아이템의 체크박스를 변경하면 전체 선택/해제 체크박스가 선택/해제되게 하기
		$(":checkbox[name='itemNo']").change(function(){
			// 장바구니 아이템 체크박스의 전체 갯수를 조회한다.
			var length = $(":checkbox[name='itemNo']").length
			// 장바구니 아이템 체크박스 중에서 체크된 갯수를 조회한다.
			var checkedLength = $(":checkbox[name='itemNo']:checked").length;
			// 장바구니 아이템 체크박스의 전체 개수와 체크된 개수가 일치하면 전체 선택/해제 체크박스의 체크여부를 true로 그 외는 false로 
			$("#checkbox-toggle-checked").prop('checked',length == checkedLength);
			
			updateTotalOrderPrice();
		})
		
		// 총 구매가격을 갱신하는 함수
		function updateTotalOrderPrice(){
	
		}
		// 
		
</script>
</body>
</html>