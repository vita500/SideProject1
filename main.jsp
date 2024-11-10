<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="EI=edge">
	<meta name="viewport" content="width-device-width, initial-scale=1.0">
	<title>기업형 웹 페이지</title>
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	<script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="css/mainStyle.css">
	<script defer src="js/ie.js"></script>
</head>
<body>
	<header>
	<div class="inner">
		<h1><a href="#">DCODLAB</a></h1>
		
	   	<ul id="gnb">
	   		<li><a href="#">DEPARTMENT</a></li>
	   		<li><a href="#">GALLERY</a></li>
	   		<li><a href="#">YOUTUBE</a></li>
	   		<li><a href="#">COMMUNITY</a></li>
	   		<li><a href="#">LOCATION</a></li>
	   	</ul>
	   	
	   	<ul class="util">
	   		<li><a href="contact/member1.html">Contact</a></li>
	   		<li><a href="#">Help</a></li>
	   		<% 
                String aname = (String) session.getAttribute("aname");
                if (aname != null) { 
            %>
                <li><a href="#"> <%= aname %>님</a></li>
                <li class="logout-btn"><a href="LoginServlet?logout=true">Logout</a></li>
            <% 
                } else { 
            %>
                <li><a href="login.html">Login</a></li>
                <li><a href="signup.html">Join</a></li>
            <% 
                } 
            %>
	   		<li><a href="#">Sitemap</a></li>
	   	</ul>
	</div>
	</header>
	
	<figure>
		<video src="img/visual2.mp4" autoplay muted loop></video>
		<div class="inner">
			<h1>INNOVATION</h1>
			<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. <br>
		       Id praesentium molestias similique quaerat magni facere in a? Adipisci, Possimus reprehenderit!</p>
		    <a href="#">view detail</a>
		</div>
	</figure>
	<section>
		<div class="inner">
			<h1>RECENT NEWS</h1>
			<div class="wrap">
				<article>
					<div class="pic">
						<img src="img/news1.jpg" alt="1번째 콘텐츠 이미지">
					</div>
					<h2><a href="#">Lorem ipsum dolor sit.</a></h2>
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae minus, eaque corrupti vero ad maiores!</p>
				</article>
				<article>
					<div class="pic">
						<img src="img/news2.jpg" alt="2번째 콘텐츠 이미지">
					</div>
					<h2><a href="#">Lorem ipsum dolor sit.</a></h2>
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae minus, eaque corrupti vero ad maiores!</p>
				</article>
				<article>
					<div class="pic">
						<img src="img/news3.jpg" alt="3번째 콘텐츠 이미지">
					</div>
					<h2><a href="#">Lorem ipsum dolor sit.</a></h2>
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae minus, eaque corrupti vero ad maiores!</p>
				</article>
				<article>
					<div class="pic">
						<img src="img/news4.jpg" alt="4번째 콘텐츠 이미지">
					</div>
					<h2><a href="#">Lorem ipsum dolor sit.</a></h2>
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae minus, eaque corrupti vero ad maiores!</p>
				</article>
			</div>
		</div>
	</section>
	<footer>
		<div class="inner">
		<div class="upper">
			<h1>DCODELAB</h1>
			<ul>
				<li><a href="#">Policy</a></li>
				<li><a href="#">Terms</a></li>
				<li><a href="#">Family Site</a></li>
				<li><a href="#">Sitemap</a></li>
			</ul>
		</div>
		
		<div class="lower">
			<address>
			Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas, facere.<br>
			TEL : 031-111-1234  C.P : 010-1234-5678
			</address>
			<p>
			2020 DOCDELAB &copy; copyright all rights reserved.
			</p>
		</div>
		</div>
	</footer>
	
</body>
</html>