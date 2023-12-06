<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-마이페이지</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="././resources/css/myPgae.css">
	<style>
		.pageBox{
			margin-bottom: 100px;
		}

		.profile-btn-area{
			justify-content: center;
    		display: flex;
			align-self: center; 
			width: 100%;
		}
		.user-info-table{
			width: 80%;	
			position: relative;
			margin-bottom: 70px;
		}
		.user-info-table td{
			padding-bottom: 0px;
		}
		.user-info-table input{
			height: 22px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 35px;
		}
		.ui-formOuter{
			width: 100%;
		}
		.ui-submit-btn{
			float: right;
			position: absolute;
			right: 70px;
			bottom: 233px;
			width: 460px;
			background: none;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
			height: 28px;
		}
		.email-input{
			height: 35px
		}
		.phone-input{
			height: 35px
		}
		.info-input{
			width: 100%;
		}

		.normal-input-box > button {
			width: 80px;
			height: 35px;
			border: 1px solid rgb(147, 147, 150);
			border-radius: 5px;
		}
           .list{
        list-style: none;
    }

    .list > .list-btn{
        background-color: transparent;
        border: none;
        cursor: pointer;
    }

    .list-btn {
        font-size: 17px;
        color: white;
        margin: 15px;
    }

    .list-btn:hover {
        color: black
    }

    .community-list {
        list-style: none;
        font-size: 25px;
        font-weight: bold;
        text-decoration: underline;
        margin: 18px;
    }

    .main{
        background-color: white;
        width: 700px;
        height: 62%;
        position: absolute;
        left: 50%;
        margin-left: -322px;
        top: 50%;
        margin-top: -260px;
        border-radius: 10px;
    }

    .community-ul{
        width: 170px;
        height: 500px;
        margin: 220px 0px 0px 315px;
        color: white;
    }

    .time-span{
        float: right;
        margin-right: 25px;
        font-size: 13px;
    }

    .community-btn{
        border-radius: 12px;
        background-color: white;
        border-width: thin;
        margin: 3px; 
        width: 56px;
        height: 27px;
            cursor: pointer;
    }

    .text1{
        font-size: 14px;
    }

    .text2{
        font-size: 12px;
    }

    .community-p{
        font-size: 10px;
    }

    .main-span1{
        font-weight: bold;
        font-size: 14px;
        margin-left: 15px;
    }

    .main-span2{
       font-size: 12px; 
    }

    .main-list{
        list-style: none;
    }

    .main-a{
        padding: 13px 0px 10px 20px;
    }

    .main-b{
        padding: 13px 0px 0px 30px;
    }

    .a-click {
        text-decoration-line: none;
        color: black;
    }

    .img {
        width: 0.8em;
        height: auto;
    }

    .line {
        width: 96%;
        margin-left: 11px;
        margin-top: 10px;
    }

    .arrow-img{
        width: 15px;
        height: 15px;
        float: right;
        margin-right: 10px;
        margin-top: 2px;
        cursor: pointer;
    }

    .border-one,  .border-two, .border-three{
        margin-left: 33px;
        line-height: 27px;
    }
    .container{
        background-color: white;
        width: 40%;
        max-height: 20%;
        padding: 21px;
        margin-top: -495px;
        margin-right: 32%;
        border-radius: 15px;
        margin-bottom: 20px;
    }

    .community-ul{
        width: 190px;
        height: 500px;
        margin: 190px 5px 0px 253px;
        color: white;
    }

    .community-list {
        list-style: none;
        font-size: 27px;
        font-weight: bold;
        text-decoration: underline;
        margin: 18px;
    }

    .list{
        list-style: none;
    }

    .list > .list-btn{
        background-color: transparent;
        border: none;
        cursor: pointer;
    }

    .list-btn {
        font-size: 17px;
        color: white;
        margin: 15px;
    }

    .list-btn:hover {
        color: black
    }

    .date{
        float: right;
    }

    .card-link{
        color: black;
        font-weight: bold;
    }

    .card-list{
        list-style: none;
        margin-bottom: 15px;
    }

    #accordion{
        margin-left: -26px;
        padding: 4px;
        margin-right: 0px;    }

    .container-h2{
        margin: 0px 8px 20px;
        font-size: 30px;
        color: black;
    }

    .arrow-img{
        width: 20px;
        height: 20px;
        float: right;
        margin-top: 10px;
    }

    .poom-span{
        margin-left: 20px;
    }
    
    .container-com{
        margin-bottom: 20px;
    }

    .card{
      margin-left: 26px;
    }
    body{
      line-height: 1.5;
    }
    h3{
      font-size: 1.75rem;
    }
    a:hover{
      color: white;
      text-decoration: none;
    }
    .SideBar-text{
      color: white;
    }
    .SideBar-text:hover{
      border-bottom: 2px solid white;
    }
    
    .enroll-style{
    	display: flex;
    	flex-direction: column;
    }
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">커뮤니티</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<div class="myPageSideBar"><a class="SideBar-text" href="list.co">전체보기</a></div>
			<a class="myPageSideBar" href="curious.co">궁금해요</a>
			<a class="myPageSideBar" href="much.co">얼마예요</a>
			<a class="myPageSideBar" href="together.co">함께해요</a>
			<a class="myPageSideBar" href="notice.co" style="font-weight: bolder;
			background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">공지사항</a>
		</div>
		<div class="main-box">
			<div class="centerTitle">
				<h3 style="margin: 10px 0 0 20px;">공지사항 글작성</h3>
				
			</div>
			<div class="pageBox" style="display: flex; flex-direction: column;">
				<div class="community-big">
					<div>
						<form class="enroll-style" action="insertNotice.co">
							<div>
								카테고리
								<select name="noticeType">
									<option value="필독">필독</option>
									<option value="공지">공지</option>
								</select>
							</div>
							<div>
								제목
								<input type="text" name="noticeTitle" required="required">
							</div>
							<div>
								내용
								<input type="text" name="noticeContent" required="required">
							</div>
							<div>
								<button type="submit" id="insertBtn">등록하기</button>
							</div>
							
						</form>
					</div>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	<script>
		document.getElementById("insertBtn").addEventListener("click", function() {
		  alert("등록이 완료되었습니다.");
		});
	</script>
</body>
</html>