<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품앗이-상세보기</title>
	<link rel="stylesheet" href="././resources/css/myPgae.css">
		<style>
        .main-box{
            position: relative;
        }
		.pageBox{
			margin-bottom: 100px;
            min-height: 721px;
            padding: 20px;
		}
        .com-title{
            font-weight: bold;
        }
        .com-service{
            font-size: 14px;
            color: rgb(147, 147, 150);
            font-weight: bold;
        }
        .com-loca{
            font-size: 14px;
            color:rgb(147, 147, 150);
            font-weight: bold;
        }
        .com-thum{
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: flex-start;
        }
        .board-info{
            font-size: 14px;
            color: rgb(147, 147, 150);
        }
        .cont-area{
            width: 100%;
            border-top: 1px solid rgba(226, 226, 226, 0.4);
            border-bottom: 1px solid rgba(226, 226, 226, 0.4);
            min-height: 200px;
            position: relative;
            padding: 30px;
        }
        .img{
            width: 20px;
            height: 20px;
            cursor: pointer;
        }
        .img-area{
            position: absolute;
            bottom: 1px;
            margin-bottom: 10px;
            color: #888888;
            margin-top: 10px;
            display: flex;
            width: 95%;
            flex-direction: row;
            justify-content: space-between;
            font-size: 14px;
        }
        .reply-align{
            display: flex;
            flex-direction: row;
            padding: 10px;
        }
        .reply-info{
        	width: 100%;
        }
        .reply-top{
            display: flex;
            position: relative;
            flex-direction: column;
            margin-bottom: 10px;
            color: #888888;
        }
        .reply-bot{
            color: #888888;
        }
        .req-btn{
            position: absolute;
            right: 1px;
            color: #00c7ae;
            background-color: #eafaf9;
            border: 0;
            padding: .3125rem 0.5rem;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            font-size: 14px;
        }
        .reply-writer{
            color: black;
            font-size: 17px;
            font-weight: 600;
        }

        .re-input-btn{
            background-color: #00c7ae;
            cursor: pointer;
            font-weight: bold;
            padding: .3125rem 0.5rem;  
        }

        .re-input-btn:hover{
            opacity: 0.5;
        }
        
        .comment_section{
	        display: table;
		    width: 100%;
		    position: relative;
		    padding: 19px 0 16px;
		    table-layout: fixed;
		    box-sizing: border-box;
        }
        
        .reply-input{
        	width: 110%;
   			 padding-left: 16px;
        }
        

       
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<c:if test="${not empty alertMsg}">
	    <script>
	        alert("${alertMsg}");
	    </script>
	</c:if>
	<div class="box" style="margin-top: 120px">
		<div class="sideBar">
			<h3 style="margin: 10px 0 0 0; font-weight: bold;">커뮤니티</h3>
			<hr style="color: white; border: 0px; height: 3px; background: white; max-width: 180px;">
			<a class="myPageSideBar" href="list.co" style="font-weight: bolder; background-color: rgba(255, 255, 255, 0.22); border-radius: 8px; width: max-content; padding: 10px;">전체보기</a>
			<a class="myPageSideBar" href="curious.co">궁금해요</a>
			<a class="myPageSideBar" href="much.co">얼마예요</a>
			<a class="myPageSideBar" href="together.co">함께해요</a>
			<a class="myPageSideBar" href="notice.co">공지사항</a>
		</div>
		<div class="main-box">
			<h3 style="margin: 10px 0 0 20px;">전체보기</h3>
			
			
			<div class="pageBox" style="display: flex; flex-direction: column; position: relative;">
                <div class="title-area"> 
                    <p class="com-service">${b.boardType == 3 ? '궁금해요' : b.boardType == 4 ? '얼마예요' : '함께해요'}</p>
                    <h4 class="com-title">${b.boardTitle}</h4>                                          
						
						<c:choose>
						    <c:when test="${b.location == null}">
						        <p class="com-loca">주소 알 수 없음</p>
						    </c:when>
						    <c:otherwise>
						        <p class="com-loca">${b.location}</p>
						    </c:otherwise>
						</c:choose>
                                                                                                          
                </div>

                <div class="com-thum">
                    <div>         
                        <img style="width: 70px; height: 70px; margin: 15px; border-radius: 15px;" src="./resources/icon/profileTest.png">
                    </div>
                    <div>
                        <div style="margin-bottom: 5px;"> ${b.memberName}</div>
                        <div class="board-info"> ${b.createDate } ·조회 101</div>
                    </div>                    
                </div>

                <div class="cont-area">
                    ${b.boardContent } 
                    <br><br><br>
                    <div class="img-area">
                        <div>
                            <img src="./resources/icon/LIKE.png" class="img" style="margin-bottom: 10px;">
                            <span>좋아요 39 ·</span>
                            <span>조회수 104</span>
                        </div>
                        <div>
                             ${b.createDate } 
                        </div>
                    </div>
                </div>
                <div class = "reply-input">
                        <c:choose>
						    <c:when test="${loginUser !=null }">
                            <div id="comment-write">
							    <input id="reply-boardNo" type="hidden" value="${b.boardNo}">
							    <input id="WriterNo" type="hidden" ${loginUser.memberNo}>
							    <input id="reply-content" class="reply-content" name="replyContent" type="text" style="width: 80%;" placeholder="댓글을 입력해주세요">
							    <button id="comment-write-btn" class="re-input-btn" onclick="insertReply()">등록</button>
							</div>
						    </c:when>
						    <c:otherwise>
                                <input class="reply-input" name="replyContent" type="text" style="width: 80%;" readonly placeholder="로그인 후 댓글작성이 가능합니다.">
						    </c:otherwise>
						</c:choose>
                  </div>
                <div class="reply-area">
                	 
                    <div class="reply-align" id ="reply-align">
                        <div class="profile-area">
                            <img style="width: 45px; height: 45px; margin: 5px; border-radius: 15px;" src="./resources/icon/profileTest.png">
                        </div>
                        <div class="reply-info">
                            <div class="reply-top">
                                <div class="reply-writer">
                                   	 정훈 
                                </div>
                                <div>
                                    일러스트 디자인+8개서비스 고수 
                                </div>
                                <button class="req-btn">견적요청</button>
                            </div>
                            <div class="reply-cont">
                                뜯어져나갈 부분은 깔끔하게 뜯어내시고 가까운 철물점에서 퍼티랑 사포 사셔서 퍼티로 평평하게 바르시고 마르면 사포로 다듬으시고 시트지를 붙여야될 것 같아요 같은 시트지가 있을지 모르겠네요
                            </div>
                            <div class="reply-bot">
                                <span> 2시간 전 ·</span>
                                <img src="./resources/icon/LIKE.png" class="img" style="margin-bottom: 10px;">
                                <span>좋아요 39 ·</span>
                                <img src="./resources/icon/dislike.png" class="img" style="margin-top: 7px;">
                                <span>싫어요 -5</span>
                            </div>
                        </div>
                    </div>
                </div>
                
			</div>		
		</div>
	</div>
	                <!-- 수정하기 삭제하기는 관리자 혹은 작성자에게만 보이게 조건걸어주기 -->
                    <c:if test="${loginUser.memberName eq b.memberName || loginUser.memberName=='관리자'}">
					    <div align="center">
					        <a class="" onclick="postFormSubmit(1)">수정하기</a>
					        <a class="" onclick="postFormSubmit(2)">삭제하기</a>				
					    </div>
					    <br><br>
					</c:if>
					
					 <form action="" method="post" id="postForm">
		           		<input type="hidden" name="boardNo" value="${b.boardNo}">	      
		             </form>
		             
					<script>
						function postFormSubmit(num){
							if(num === 1){
		                        $("#postForm").attr('action', 'updatePage.co');
								// document.querySelector('#postForm').setAttribute('action', 'updateForm.bo');
							} else{
		                        $("#postForm").attr('action', 'deletePage.co');
								// document.querySelector('#postForm').setAttribute('action', 'deleteForm.bo');
							}
		                    $("#postForm").submit();
		                    // document.querySelector('#postForm').submit();
						}
						
						window.onload = function(){
							//댓글 가져와서 그려주기
							selectReplyList();
							
						}
						
					
						function selectReplyList() {
						    $.ajax({
						        url: "list.re",
						        data: {
						            boardNo: document.getElementById("reply-boardNo").value
						        },
						        success: function(res) {
						        	
						            let str = "";
						            for (let reply of res) {
						                console.log(reply);
						                str += 
						                "<div class=\"reply-align\" id=\"reply-align\">" +
						                "<div class=\"profile-area\">" +
						                "<img style=\"width: 45px; height: 45px; margin: 5px; border-radius: 15px;\" src=\"./resources/icon/profileTest.png\">" +
						                "</div>" +
						                "<div class=\"reply-info\">" +
						                "<div class=\"reply-top\">" +
						                "<div class=\"reply-writer\">" +
						                reply.memberName +
						                "</div>" +
						                "<div>" +
						                "일러스트 디자인+8개서비스 고수" +
						                "</div>" +
						                "<button class=\"req-btn\">견적요청</button>" +
						                "</div>" +
						                "<div class=\"reply-cont\">" +
						                reply.replyContent +
						                "</div>" +
						                "<div class=\"reply-bot\">" +
						                "<span>" + reply.createDate + " ·</span>" +
						                "<img src=\"./resources/icon/LIKE.png\" class=\"img\" style=\"margin-bottom: 10px;\">" +
						                "<span>좋아요 39 ·</span>" +
						                "<img src=\"./resources/icon/dislike.png\" class=\"img\" style=\"margin-top: 7px;\">" +
						                "<span>싫어요 -5</span>" +
						                "</div>" +
						                "</div>" +
						                "</div>";
						            }
						            document.querySelector('.reply-area').innerHTML = str;
						        },
						        error: function() {
						            console.log("댓글 목록 조회 실패");
						        }
						    });
						}
						
                        function insertReply(){
                            const boardNo = document.getElementById("reply-boardNo").value;
                            const memberNo = document.getElementById("WriterNo").innerText;
                            const contents = document.getElementById("reply-content").value;
                            console.log("보드넘버 : ", boardNo);
                            console.log("작성자번호: ", memberNo);
                            console.log("내용 : ", contents);
                           

                            $.ajax({
                                type : "post",
                                url : "insert.re",
                                data : {
                                    "memberNo" : memberNo,
                                    "replyContent" : contents,
                                    "boardNo" : boardNo
                                },
                                success: function(result){                    
                                    
                                    if(result >0){ //댓글 작성성공
                                    	console.log("인설트 성공!! ");
                                        document.getElementById("reply-content").value = "";
                                    	selectReplyList();	
                                    }
                                },
                                error:function(){
                                    console.log("요청 실패");
                                }
                            });
                        }
					</script>
                </div>
			</div>		
		</div>
	</div>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>