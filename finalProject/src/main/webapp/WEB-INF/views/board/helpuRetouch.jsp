<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도와줄게요 게시글 수정</title>

<link rel="stylesheet" type="text/css" href="././resources/css/helpmeboder.css">

</head>
<body>
<%@ include file="../common/header.jsp" %>
    <div style="display: flex; align-items: center; justify-content: center;">
        <div class="outer">
            <img class="hu-close-btn2" src="././resources/icon/close.png" alt="" onclick="prevAction()">
            <br>
            <h2 align="center">의뢰 수정</h2>
            <br>
        
            <form method="post" action="helpmeUpdate.bo" enctype="multipart/form-data">
                <input type="hidden" value="${b.boardNo}" name="boardNo">
                <input type="hidden" name="userNo" value="">
                        <div style="display: flex; margin-bottom: 20px;">
                        <div class="hu-enroll-info">
                            게시판
                        </div>
                        <div>
                            <select name="boardType" id="boardType">
                                <option value="2">도와주세요</option>
                                <option value="1">도와줄게요</option>                
                            </select>
                        </div>  
                    </div>
                    <div style="display: flex; margin-bottom: 20px;">
                        <div class="hu-enroll-info">
                            카테고리
                        </div>
                        <select name="categoryNo" id="categoryNo">
                            <option value="200">200</option>
                            <option value="201">201</option>
                            <option value="202">202</option>
                            <option value="203">203</option>
                            <option value="204">204</option>
                            <option value="205">205</option>
                        </select>
                    </div>
                    <div style="display: flex; margin-bottom: 20px;">
                        <div class="hu-enroll-info">
                            제목
                        </div>
                        <input class="hu-title-input" type="text" name="boardTitle" value="${b.boardTitle }" >
                    </div>
                    <div style="display: flex; margin-bottom: 20px;">
                        <div class="hu-enroll-info">
                            내용
                        </div>
                        <div>
                            <textarea class="hu-textarea" name="boardContent" rows="5"  style="resize: none;" >${b.boardContent}</textarea>
                        </div>
                    </div>
                    <div style="display: flex; margin-bottom: 20px;">
                        <div class="hu-enroll-info">
                            사진
                        </div>
                        <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 650px;">
                            <div>
                                <img id="title-img" style="margin-right: 10px; width: 250px; height: 250px;" onclick="chooseFile(1);">
                            </div>
                            <div style="display: flex; flex-direction: column; align-items: center; justify-content: space-between; height: 100%;">
                                <div>
                                    <img id="content-img1" width="120" height="120" onclick="chooseFile(2);">
                                    <img id="content-img2" width="120" height="120" onclick="chooseFile(3);">
                                    <img id="content-img3" width="120" height="120" onclick="chooseFile(4);">
                                </div>
                                <div>
                                    <img id="content-img4" width="120" height="120" onclick="chooseFile(5);">
                                    <img id="content-img5" width="120" height="120" onclick="chooseFile(6);">
                                    <img id="content-img6" width="120" height="120" onclick="chooseFile(7);">
                                </div>                    
                            </div>
                        </div>
                    </div>
                    <div style="display: flex; margin-bottom: 20px;">
                        <div class="hu-enroll-info">
                            희망가격
                        </div>
                        <div>
                            <input class="hu-price" type="number" id="price" name="price" min="1000"  max="10000" placeholder="최소 1,000원" value="${b.price}">
                        </div>
                    </div>
        
                <div style="display: none;">
                    <input type="file" name="upfile" id="file1" required onchange="loadImg(this,1)">
                    <input type="file" name="upfile" id="file2" onchange="loadImg(this,2)">
                    <input type="file" name="upfile" id="file3" onchange="loadImg(this,3)">
                    <input type="file" name="upfile" id="file4" onchange="loadImg(this,4)">
                    <input type="file" name="upfile" id="file5" onchange="loadImg(this,5)">
                    <input type="file" name="upfile" id="file6" onchange="loadImg(this,6)">
                    <input type="file" name="upfile" id="file7" onchange="loadImg(this,7)">
                </div>
                <br>
                <div align="center">
                    <button type="reset" class="hu-cancle-btn">취소</button>
                    <button type="submit" class="hu-submit-btn">수정</button>
                </div>
            </form>
        </div>
    </div>


<%@ include file="../common/footer.jsp" %>
<script>
    function loadImg(inputFile, num){
        console.log(inputFile)
        //inputFile : 현재 변화가 생긴 input type=file 요소객체
        // num : 몇번째 input요소인지 확인하기위한 파라미터
        
        //inputFile.files[0]에 선택된 파일이 담겨있을 것이다.
        //inputFile.files.length => 1일 것이다.

        if(inputFile.files.length == 1) { // 파일이 선택된 경우 => 미리보기 나타나게
            //파일을 읽어들일 FileReader객체 생성
            const reader = new FileReader();
            
            //파일을 읽어들이는 메소드
            //해당파일을 읽어들이는 순간 해당 파일만의 고유한 url부여
            reader.readAsDataURL(inputFile.files[0]);
         
            //파일 읽어들이기 완료했을 때 실행할 함수 정의
            reader.onload = function(ev){          
                //ev.target.result => 읽어들인 파일의 고유한 url
                switch(num){
                    case 1: document.getElementById('title-img').src = ev.target.result; break;
                    case 2: document.getElementById('content-img1').src = ev.target.result; break;
                    case 3: $("#content-img2").attr("src", ev.target.result); break;
                    case 4: $("#content-img3").attr("src", ev.target.result); break;
                    case 5: $("#content-img4").attr("src", ev.target.result); break;
                    case 6: $("#content-img5").attr("src", ev.target.result); break;
                    case 7: $("#content-img6").attr("src", ev.target.result); 
                }
            }

        } else { // 선택된 파일이 취소된 경우 => 미리보기 사라지게
            switch(num){
                case 1: document.getElementById('title-img').src = null; break;
                case 2: document.getElementById('content-img1').src = null; break;
                case 3: $("#content-img2").attr("src", null); break;
                case 4: $("#content-img3").attr("src", null); break;
                case 5: $("#content-img4").attr("src", null); break;
                case 6: $("#content-img5").attr("src", null); break;
                case 7: $("#content-img6").attr("src", null); 
            }
        }
    }
    
    function chooseFile(num){
        $("#file" + num).click();
    }
    function prevAction(){
            history.go(-1);
        }
</script>
</body>
</html>