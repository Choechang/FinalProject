<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.reason-box{
			display: flex;
	  		flex-direction: column;
		}
		
		.emailInput{
			width: 280px;
			height: 25px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 8px;
			font-size: 12px;
		}
		
		label {
			cursor: pointer;
		}
		
		.retire {
			float: right;
			width: 100px;
			height: 30px;
			background-color: rgb(218, 76, 60);
			color: white;
			border: none;
			border-radius: 3px;
			margin-bottom: 5px;
			cursor: pointer;
			font-weight: bold;
			position: absolute;
			right: 0px;
			bottom: -12px;
		}
		
		.retire:hover {
			background-color: rgb(218, 76, 60, 0.27);
		}
		
		.label-css{
			margin: 1px;
			font-size: 13px;
		}
		.df-text-box{
			resize: none; 
			text-align: left;
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			font-size: 12px;
			padding: 10px;
			width: 100%;
		}
		.df-form{
			width: 95%;
		}
		.user-info {
			margin-left: 0px;
			justify-content: center;
		}
		.df-bottom{
			display: flex;
			align-items: center;
			justify-content: space-between;
			position: relative;
		    margin-top: 5px;
	    	margin-bottom: 5px;
		}
		.pageBox{
			padding: 15px
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px;">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
		
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">일정 관리</a>
			<a class="myPageSideBar" href="ask.me">문의 내역</a>
			<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
                <a class="myPageSideBar" href="careMem.me">회원 관리</a>
           		<a class="myPageSideBar" href="ask.me">신고 내역</a>
            </c:if>        
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">회원 탈퇴</h3>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info" style="margin-top: 15px;">
					<form action="delete.me" class="df-form">
						<h5 style="margin-bottom: 5px;">떠나시는 이유를 알려주세요.</h5>
						<div class="reason-box">
							<label class="label-css"><input type="radio" name="reason" value="1" checked="checked"> 이용하고 싶은 서비스가 없어요</label>
							<label class="label-css"><input type="radio" name="reason" value="2"> 서비스 퀄리티가 낮아요</label>
							<label class="label-css"><input type="radio" name="reason" value="3"> 비매너 회원을 만났어요</label>
							<label class="label-css"><input type="radio" name="reason" value="4"> 잦은 오류가 발생해요</label>
							<label class="label-css"><input type="radio" name="reason" value="5"> 대체할만한 서비스를 찾았어요</label>
							<label class="label-css"><input type="radio" name="reason" value="6"> 쿠폰 &middot; 적립금등 혜택이 적어요</label>
						</div>
						<h5 style="margin-bottom: 5px; margin-top: 15px;">이메일 확인</h5>
						<input class="emailInput" name="memberEmail" placeholder="가입하신 이메일을 입력해주세요.">
						<h5 style="margin-bottom: 5px; margin-top: 15px;">주의 사항</h5>
						<textarea class="df-text-box" rows="15" cols="96%" readonly="readonly">
								1. 현재 사용 중인 계정 정보는~~~
								2. 진행 중인 거래 건이 있거나~~
								3. 탈퇴 후 ~~
								4. 현재 보유 중인~~
								5. 구매후기~~
								
								110. 충전캐시~~
						</textarea><br>
						<div class="df-bottom">
							<label class="label-css"><input id="cT" type="checkbox"> 주의사항을 모두 확인하였습니다.</label>
							<br>
							<button class="retire" type="submit" disabled>탈퇴</button>
						</div>
					</form>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />

	<script>
		const cT = document.querySelector('#cT');
        cT.addEventListener('change', function(){
            if(cT.checked){
                document.querySelector('.retire').disabled = false;
            } else{
            	document.querySelector('.retire').disabled = true;
            }
        });
        
        
	</script>
</body>
</html>