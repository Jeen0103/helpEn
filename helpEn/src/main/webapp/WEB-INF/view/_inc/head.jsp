<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
      	<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
		  <image xlink:href="${pageContext.request.contextPath}/resources/images/bg_1.jpg" width="100%" height="100%" preserveAspectRatio="xMidYMid slice"/>
		</svg>
      </div>
    </div>
</div>
  
<!-- 네비게이션 바 시작 부분 -->
<!--  영작  클릭영작  빈칸넣기  찾기  내글  클릭내글  단어1  단어2  사진영어  다운로드  발음  영작노트  오류찾기  영문편지  회화  도란도란  -->
<div class="b-example-divider">
 <header class="p-3 text-bg-dark">
   <div class="container">
     <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
       <h1><a class="navbar-brand" href="/helpEn"><img src="${pageContext.request.contextPath}/resources/images/HelpEn.png" style="width: 130px; height: auto;" /></a></h1>

       <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 ms-2">
         <li><a href="#" class="nav-link px-2 text-white">영작연습</a></li>
         <li><a href="#" class="nav-link px-2 text-white">클릭영작</a></li>
         <li><a href="#" class="nav-link px-2 text-white">빈칸넣기</a></li>
         <li><a href="#" class="nav-link px-2 text-white">사전검색</a></li>
         <li><a href="#" class="nav-link px-2 text-white">지식공유</a></li>
       </ul>

       <div class="text-end">
         <button type="button" class="btn btn-outline-light me-2">Login</button>
         <button type="button" class="btn btn-warning">Sign-up</button>
       </div>
     </div>
   </div>
 </header>
</div>
<!-- 네비게이션 바 종료 부분 -->