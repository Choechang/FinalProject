<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="././resources/css/amountChargePage.css">
<style>
	.box-one1,
	.box-one2,
	.box-two1,
	.box-three1,
	.box-three2,
	.box-three3{
		width: 340px;
		border: 1px solid white;
		border-radius: 8px;
		background-color: white;
		margin: 50px 30px 30px 30px;
		padding-top: 5px;
	}
	span {
		margin-left: 13px;
	}
	#payBtn{
		border: none;
		border-radius: 3px;
		cursor: pointer;
	}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="pay-page">
			<div>
				<div class="box-one1">
					<span style="font-weight: bold;">주문 상품 정보</span>
					<div style="margin: 13px; display: flex;">
						<img src="${b.changeName}" style="width: 80px; height: 80px">						
						<div style="margin-left: 20px;">
							${b.boardTitle}
							<br>
							<span style="font-size: large; font-weight: bold; margin: 0px;">${b.price} 원</span>
						</div>
						
					</div>
				</div>
				<div class="box-one2">
					<span style="font-weight: bold;">주문자 정보</span>
					<div style="margin: 13px; color: gray;">
						<span style="margin: 0px; font-weight: bold; color: black;">${loginUser.memberName}</span>
						<br>
						${loginUser.phone}
						<br>
						${loginUser.memberEmail}
					</div>
				</div>
			</div>
			<div class="box-two1">			
					<span style="font-weight: bold;">배송 정보</span>
					서비스상품일 경우, 이쪽부분 내용을 다른방식으로 변경하거나 삭제해야함
			</div>
			<div>
				<div class="box-three1">
					<span style="font-weight: bold;">최종 결제 금액</span>
					<div style="color: gray;">
						<div style="display: flex; justify-content: space-between; margin-left: 10px; margin-right: 10px; margin-top: 5px;">
							<div>
								상품가격
							</div>
							<div>
								${b.price}
							</div>
						</div>
						<div style="display: flex; justify-content: space-between; margin-left: 10px; margin-right: 10px;">
							<div>
								배송비
							</div>
							<div>
								0
							</div>
						</div>
						<hr style="margin-top: 5px;">
						<div style="display: flex; justify-content: space-between; margin-left: 10px; margin-right: 10px; color: black;">
							<div>
								<span style="margin: 0px; font-weight: bold;">총 주문금액</span>
							</div>
							<div style="margin-bottom: 5px;">
								<input type="number" value="${b.price}" readonly="readonly">
							</div>
						</div>
					</div>
				</div>
				<div class="box-three2">
					<span style="font-weight: bold;">결제 방법</span>
					<div style="margin-left: 10px; margin-top: 5px;">
						<input type="checkbox" id="PoomAtYeePay" checked="checked">
						<label for="PoomAtYeePay">품앗이 페이</label>
						<br>
						추후 추가될 예정입니다.
					</div>
				</div>
				<div class="box-three3">
					<div style="margin-left: 10px;">
						<input type="checkbox" id="agree">
						<label for="agree" style="font-weight: bold;">구매 조건 확인 및 결제진행에 동의</label>
					</div>
					<form action="">
						<input style="display: ;" id="price" value="${b.price}" readonly="readonly">
						<input style="display: ;" id="memberNo" value="${loginUser.memberNo}" readonly="readonly">
						<input style="display: ;" id="b.boardNo" value="${b.boardNo}" readonly="readonly">
						<!-- 
							로그인 유저의 포인트에서 가격만큼 차감하고 차감이 성공된다면(결제 성공)
							유저가 결제한 게시글 + 그글을쓴 글쓴이 에게 요청 전송
						-->
						<button id="payBtn" type="submit" style="width: 100%; height: 40px;" onclick="startPay()">결제하기</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>
