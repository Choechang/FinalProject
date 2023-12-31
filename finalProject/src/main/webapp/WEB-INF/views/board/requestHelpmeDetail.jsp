<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 상세보기</title>
  <link rel = "stylesheet" href="http://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0">
    <script src="././resources/js/script.js" defer></script>
<style>
    * {
        list-style: none; 
        text-decoration: none;
        border-collapse: collapse;
        margin: 0px;
        padding: 0px;
    }
    
    .nav{
        height: 70px;
        display: flex;
        align-items: center;
        margin-top: 70px;
    }

    .nav-center-items{
        display: flex;
        margin: auto;
       
    }

    .nav-item{
        font-size: 18px;
        height: 40px;
        
        padding-left: 70px;
        text-align: center;
        font-weight: bold;
        color: white;
    }

    a:after {
        display:block;
        content: '';
        border-bottom: solid 2px #ffffff;  
        transform: scaleX(0);  
        transition: transform 250ms ease-in-out;
     }
    a:hover:after { 
        transform: scaleX(1); 
    }

    .nav-item > a{
        color: white;
    }

    .category{
        width: 100px; 
        text-align: center;  
        height: 200px;
    }

    .category-item {
        width: 100px;
        height: 40px;   
        text-align: center;
        padding-top: 10px;
        margin-top: 10px;
        border-radius: 10px;
    }

    .category-item > a{
        margin-top: 150px;
        font-weight: bold; 
        color: white;
        font-size: 14px;
    }
    
    .main{
        display: flex;    
        width: 1300px;  
        height: max-content;
        border: 1px;
        margin: 0 auto;
        margin-bottom: 100px;
    }

    .content-item{
        display: inline-block;
        width: 240px;
        height: 270px;
        border: 1px ;     
        border-radius: 10px;
        margin-top: 20px;
        margin-right: 15px;
        background-color: rgba(83, 82, 82, 0.65)
    }

    .content-item:hover{
        background-color: rgba(255, 255, 255, 0.22);
    }

    .content-img{
    	height: 150px;
    	padding-top: 15px;
        width: 200px;
        text-align: center;
    }
    
    .content-item-title{
    	padding-top: 10px;
        font-size: 15px;
        font-weight: bold;
        color: white;
    }

    .content-item-price{
        font-size: 14px;
        font-weight: bold;
        text-align: right;
        padding-top: 40px;
        padding-right: 15px;
        color: white;
    }
    
    .content-head{
        display: flex;
        justify-content: space-between;
    }

    #head-count{
        text-align: right;
        color: white;
        font-size: 13px;
        padding-left: 40px;
        font-weight: bold;
    }
   
  	.back-ground{
  		width : 100%;
  		background-color:rgba(60, 59, 59, 0.27);
  	}
  	

    #head-category{
        padding-right: 50px;
    }

    #category-item {
        color: white;
        font-size: 18px;
        border: none;
        /* width: 100px; */
       
        margin-top: 10px;
       
    }

    .nav-item-content{
        width: 95px;
        padding: 9px;
        border-radius: 8px;
        color: white;
    }
    
    a{
        color: white;
    }

    option:hover {
        background-color: rgb(0, 0, 0);
    }
    option:checked {
        background-color: rgb(0, 0, 0);
    }

    .aaa:visited{
        background-color: black;
        color: white;
    }

    #head-category-list{
        background-color: transparent; 
        color: white;
        border: none;
    }

    .head-category-slist{
        background-color: rgba(83, 82, 82, 0.65);
    }

    /* 
        디테일 뷰 스타일
    */
    .main-photo{
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .photo{
        width: 550px;
        height: max-content;
        background-color: white;
        align-items: center;
        padding: 20px;
        border-radius: 8px;
    }
    .big-photo{
        width: 510px;
        margin-bottom: 20px;
        border: 1px solid rgba(96, 96, 96, 0.4);
    }

    .slider-wrapper .slide-button{
        position: absolute;
        top: 50%;
        height: 30px;
        width: 30px;
        color: transparent;
        border: none;
        outline: none;
        background-color: transparent;
        font-size: 30px;
        cursor: pointer;
        
        padding-bottom: 42px;
    }

    .slider-wrapper .slide-button:hover{
        color: black;

    }

    .slider-wrapper{
        position: relative;
    }

    .slider-wrapper .slide-button#prev-slide{
        left: 0px;
        display: none;
        margin-bottom: 10px;
    }

    .slider-wrapper .slide-button#next-slide{
        left: 510px;
    }
    
    .slider-wrapper .image-list {
        display: grid;
        gap: 18px;
        font-size: 0;
        overflow-x: auto;
        margin-bottom: 1px;
        scrollbar-width: none;
        grid-template-columns: repeat(10, 1fr);
    }

    .slider-wrapper .image-list::-webkit-scrollbar{
        display: none;
    }

    .slider-wrapper .image-list .image-item{
        width: 200px;
        height: 120px;
        object-fit: cover;
        border: 1px solid rgba(96, 96, 96, 0.4);
    }

    .container .slider-scrollbar{
        height: 24px;
        width: 100%;
        display: flex;
        align-items: center;
    }

    .slider-scrollbar .scrollbar-track{
        height: 2px;
        width: 100%;
        background-color: #ccc;
        position: relative;
        border-radius: 4px;
    }

    .slider-scrollbar:hover .scrollbar-track{
        height: 4px;
    }

    .slider-scrollbar .scrollbar-thumb{
        position: absolute;
        height: 100%;
        width: 50%;
        background-color: #000;
        border-radius: inherit;
        cursor: grab;
    }

    .slider-scrollbar .scrollbar-track:active{
        cursor: grabbing;
        height: 8px;
        top: -2px;
    }

    .slider-scrollbar .scrollbar-thumb::after{
        content: "";
        position: absolute;
        left: 0;
        right: 0;
        top: -10px;
        bottom: -10px;
    }

    /*
        content 내용 css
    */
    .content{
        width: 550px;
        height: max-content;
        background-color: white;
        margin: 0 auto;
        padding: 30px;
        border-radius: 8px;
        text-align: center;
        position: relative;
    }

    .icon{
        width: 500px;
        height: 50px;
        background-color: #fff;
        margin-top: 10px;
        align-items: center;
    }

    .icon > div{
       display: inline-block; 
    }

    .share {
        float: left;
    }
    .share :hover{
        cursor: pointer;
    }

    .heart {
        float: right;
    }
    .heart :hover{
        cursor: pointer;
        opacity: 0.5;
    }
    .heart-text{
        display: inline-block;
  
    }

    .heart-text > h4{
        text-align: center;  
    }
   

    .icon img{
        height: 40px;
       
    }

    .report{
        display: inline-block;
    }
    .start{
        display: inline-block;
    }

    .report > img{
        display: inline-block;
        height: 40px;
    }
    .star > img{
        display: inline-block;
        height: 40px;
    }


    .star-text {
        width: max-content;
        display:  inline-block; 
        font-size: 13px
    }
    .logo{
        display: block;
    }
  
    .content-title{
            align-items: center;
    	 justify-content: center; 
    
    }
    .content-detail{
        height: 400px;
    	justify-content: center;
    	display: flex;
        padding: 30px;
        text-align: left;
    }
    .share-icon{border: none;
        opacity: 0.5;}
    .heart-icon{border: none;
        opacity: 0.5;}
    .report-btn{border: none;
        background-color: white;
        opacity: 0.5;
    }
    .report-btn:hover{
        cursor: pointer;
    }
    #content-btn{
        background-color: rgb(87, 212, 197);
        color: white;
        font-weight: bold;
        border: none;
        width: 300px;
        height: 40px;
        border-radius: 4px;
        font-size: 16px;
    }
    #content-btn:hover{
        cursor: pointer;
        opacity: 0.5;
    }

    .star{
        justify-content: center;
        display: flex;
        align-items: center;
    }

    .report{
        justify-content: center;
        display: flex;
        align-items: center;
    }

    .report-btn{
        padding-left: 10px;
        font-weight: bold;
    }
    .star-text{
        font-weight: bold;
    }

    .modal.active{
        display: block;
    }

    .modal{
        background-color: #000;
        position: absolute;
        top: 0;
        left: 0;
        height: 100vh;
        width: 100%;
        display: none;
        
    }
    .nav-item-content{
    	color : white;
    }
    .helpr-text{
	    resize:none; 
	    width:100%;
	}

	.img{
		width:50px;
		height: 50px;
	}
	
	.hu-cancle-btn{
        margin-right: 10px;
        font-size: 13px;
    }

	.hu-cancle-btn:hover{
		cursor: pointer;
        opacity: 0.5;
	}
	
	.hu-submit-btn{
		cursor: pointer;
        opacity: 0.5;
        margin-right: 10px;
        font-size: 13px;
	}

    .hu-submit-btn:hover{
        opacity: 0.3;
    }

    .count{
        display: flex;
        justify-content: end;
        font-size: 14px;
    }
    .hmd-close-btn{
        width: 13px;
        height: 13px;
        cursor: pointer;
        position: absolute;
        right: 15px;
        top: 15px;
    }
    .data{
        display: flex;
        flex-direction: row;
        justify-content: end;
    }
    .hu-btn-area{
        display: flex;
        flex-direction: row;
    }
</style>
<script src="${pageContext.request.contextPath}/resources/js/helpmeboder.js"></script>
</head>
<body>
<%@ include file="../common/header.jsp" %>
	<div class = "nav">
        <div class = "nav-center-items">
            <div class = "nav-item">
                <div class="nav-item-content" >
                    <a href="#" style = "color : white;" >전체보기</a>
                </div>
            </div>
            <div class = "nav-item"><a href="#">&#60;</a></div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#" style = "color : white;">취미,레슨</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#" style = "color : white;">디자인</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#" style = "color : white;">마케팅</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content" style="background-color: rgba(255, 255, 255, 0.22);">
                    <a href="#" style = "color : white;">운동</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#" style = "color : white;">게임</a>
                </div>
            </div>
            <div class = "nav-item">
                <div class="nav-item-content">
                    <a href="#" style = "color : white;">미술</a>
                </div>
            </div>
           
            <div class = "nav-item"><a href="#">&#62;</a></div>
        </div>
   </div>
    <div class="main">
        <div class = "photo">
            <div class = "main-photo">
                <img class = "big-photo" src ="${b.changeName}" alt="메인사진">
            </div>
            <div class = "container">
                <div class = "slider-wrapper">
                    <button id ="next-slide" class="slide-button material-symbols-rounded">&#62;</button>
                    <div class = "image-list">
                        <c:forEach var="at" items="${atlist}">
                            <img class ="image-item" src="${at.changeName}" alt="일러스트">
                        </c:forEach>
                    </div>
                    <button id ="prev-slide" class="slide-button material-symbols-rounded">&#60;</button>
                </div>
                <div class="slider-scrollbar">
                    <div class="scrollbar-track">
                        <div class="scrollbar-thumb"></div>
                    </div>
                </div>
            </div>    
        </div>
        <div class = "content">
            <img src="././resources/icon/close.png" class="hmd-close-btn" onclick="prevAction()" alt="">
            <div class = "content-title">
                <div class = "content-title-text">
                    <text><h2>${b.boardTitle }</h2></text> 
                </div>
                <div class = "modal actice">
                    <div class = "modal-content">
                        <a href="#none" class = "btn-close">x</a>
                    </div>
                </div>     
                <div class = "a">               
                    <div class="logo">          
                        <div class = "data">
                            <div class="hu-btn-area">
                                <a class="hu-submit-btn" onclick="postBtn(1)">수정</a>
                                <a class="hu-cancle-btn" style="color: rgb(231, 76, 60);" onclick="postBtn(2)">삭제</a>
                            </div> 
                            <div class="count">
                                <img src="././resources/icon/eye.png" style="width: 20px; height: 20px; margin-right: 10px;" alt="">
                                 ${b.memberNo }
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class = "content-detail">
            <pre style="width: 100%; height: 100%;">
${b.boardContent }
            </pre>
            </div>
            <button id="content-btn">채팅하기</button>
            <form action="" method="post" id="form">
                <input type="hidden" name="boardNo" value="${b.boardNo}">
                <input type="hidden" name="filePath" value="${b.changeName}">
            </form> 
        </div>
    </div>

<%@ include file="../common/footer.jsp" %>
<script>
        function prevAction(){
            history.go(-1);
        }
</script>
</body>
</html>