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
		.p-btn {
			display: inline-block;
			margin: 0 auto;
			padding: 10px 11px;
			font-size: 14px;
			background: rgba(255, 255, 255, 0.22);
			border-radius: 8px;
			cursor: pointer;
			letter-spacing: -2px;
			font-weight: bolder;
		}
		.p-btn1 {
			display: inline-block;
			margin: 0 auto;
			padding: 10px 11px;
			font-size: 14px;
			background: rgba(255, 255, 255, 0);
			border-radius: 8px;
			cursor: pointer;
			letter-spacing: -2px;
			font-weight: bolder;
		}
		p::after{
			display:block;
			content: '';
			border-bottom: solid 2px #ffffff;  
			transform: scaleX(0);  
			transition: transform 250ms ease-in-out;
		}
		p:hover::after{
			transform: scaleX(1);
		}
		.user-info{
			display: flex;
			align-items: center;
			margin-bottom: 40px;
			margin-top: 0px;
			flex-direction: column;
			justify-content: space-evenly;
			margin-left: 0px;
		}
		.pageBox{
			border-radius: 13px;
			border: 1px solid rgba(226, 226, 226, 0.4);
			padding: 15px;
			margin-bottom: 100px;
			position: relative;
		}
		.top-center{
			margin-bottom: -15px;
		}
		.req-outer{
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			width: 96%;
			margin-top: 10px;
			height: 150px;
			padding-left: 15px;
			padding-top: 10px;
			display: flex;
    		flex-direction: column;
    		justify-content: space-between;
		}
		.req-outer1{
			border: 1px solid rgba(96, 96, 96, 0.5);
			border-radius: 10px;
			width: 96%;
			margin-top: 10px;
			height: 100%;
			padding-left: 15px;
			padding-top: 10px;
			display: flex;
    		flex-direction: column;
    		justify-content: space-between;
		}
		.answer {
		    width: 100%;
		    height: 6.25em;
		    resize: none;
		  }
		.req-desc{
			font-size: 12px;
			margin-top: 20px;
		}
		.req-text{
			display: flex;
			flex-direction: column;
		}
		.req-info{
			display: flex;
    		align-items: flex-end;
    		flex-direction: column;
			margin-right: 10px;
		}
		.req-align{
			display: flex;
			flex-direction: row;
			justify-content: space-between;
		}
		.req-no{
			font-size: 12px;
		}
		.req-id{
			font-size: 14px;
		}
		.req-answer-btn{
			background: rgb(218, 76, 60);
			border: none;
			width: 100px;
			height: 30px;
			border-radius: 4px;
			color: white;
			margin-right: 5px;
			cursor: pointer;
			font-size: 13px;
		}
		.req-detail-btn{
			background: rgb(0, 199, 174);
			border: none;
			width: 100px;
			height: 30px;
			border-radius: 4px;
			color: white;
			cursor: pointer;
			font-size: 13px;
		}
		.req-btn-area{
			display: flex;
    		justify-content: end;
    		margin-right: 10px;
			margin-bottom: 10px;
		}
		.close-btn{
			width: 10px;
    		position: absolute;
    		right: 12px;
    		top: 11px;
			cursor: pointer;
		}
		.req-title{
			font-weight: bold;
		}
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">계정 설정</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
		
			<a class="myPageSideBar" href="userInfo.me">나의 정보</a>
			<a class="myPageSideBar" href="proInfo.me">전문가 정보</a>
			<a class="myPageSideBar" href="changePwd.me">비밀번호 변경</a>
			<a class="myPageSideBar" href="deleteForm.me">회원 탈퇴</a>
			<a class="myPageSideBar" href="schedule.me?toMemberNo=${loginUser.memberNo}">요청 관리</a>
			<a class="myPageSideBar" href="ask3.me" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">문의 내역</a>
			<c:if test="${loginUser != null && loginUser.memberName == '관리자'}">
				<a class="myPageSideBar" href="careMem.me">회원 관리</a>
                <a class="myPageSideBar" href="reportList.rp">신고 내역</a>
			</c:if>        
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">신고(문의) 등록</h3>
			<br>
			<div class="top-center"
				style="display: flex; justify-content: space-around; margin-left: 20px; margin-right: 20px">
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="user-info">
					<form action="insertReport.me">
					<div>
						작성자
						<input type="text" value="${loginUser.memberEmail} / ${loginUser.memberName}님" readonly="readonly" style="width: 100%;">
						<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
					</div>
					<div>
						제목
						<input type="text" name="reportTitle">
					</div>
					<div>
						내용
						<input type="text" name="reportContent">
					</div>
					<button type="submit">등록하기</button>
					</form>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>