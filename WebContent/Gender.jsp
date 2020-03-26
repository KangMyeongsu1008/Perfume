<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Eau de parfum</title>
<style type="text/css">
*{
	margin: 0;
}

a :lang(en){
	margin: 0px;
	font-family: serif;
}

a {
	text-decoration: none;
}

nav :visited , section :visited,nav :link {
	color: white;
}

nav :hover, header>ul:visited, header>ul :hover , section :hover {
	color: #01DF01;;
}

header>ul :link {
	color: grey;
}

h1>a:visited, h1>a :hover, h1>a :link {
	color: dimgrey;
}

header {
	background-color: whitesmoke;
}


header>div>h1 {
	color: black;
	text-align: center;
	padding-left: 13%;
}


header>div>h1>a.side {
	float: right;
	font-size: 15px;
	margin-right: 30px;
	padding: 0;
}

header>h1 {
	color: dimgrey;
	margin: 0px;
	text-align: center;
	padding-top: 20px;
	position: relative;
}


header>ul {
	margin: 0;
	text-align: right;
	padding-bottom: 15px;
	padding-top: 5px;
}

header ul a {
	margin: 0px;
	padding-left: 5px;
	padding-right: 25px;
}

/* header nav */
header>nav {
	overflow: hidden;
	background-color: black;
	height: 40px;
	word-spacing: 100px;
	text-align: center;
	width: 100%;
	padding-top: 5px;
}
header>nav>a {
	margin: 0px;
	padding-right: 150px;
	padding-left: 150px;
	font-size: 1.2em;
	padding-top: 5px;
}

section {
		border: "1px solid grey";
        height: 900px;
        background-image: url('./background_image/성별(불투명).png') ;
        background-repeat : no-repeat;
        background-size: 100% 100%;
        text-align: center;
}

section>h1 {
	font-size: 40px;
	color: white;
	text-align: center;
	padding-top: 30px;
}


section>div {
	float:left;
	color: white;
	font-size : 20px;
	position: relative;
	margin-top:8%;
	padding-left: 14%;
	

}

input[type=submit] {
	display: none;
}

input[type=submit]+label {
	float:right;
	cursor: pointer;
	background-size: cover;
	background-repeat: no-repeat;
	width: 250px;
	height: 250px;
	border-radius: 50%;

}

input[type=submit]#men+label {
	background-image: url('./images/men.png');

}

input[type=submit]#women+label {
	background-image: url('./images/women.png');

}

input[type=submit]#anyway+label {
	background-image: url('./images/상관없음 사본.png');

}
</style>
</head>
<% session = request.getSession();
String email = (String) session.getAttribute("email");

%>


<body>

	<header id=main_header>
		<div>
			<h1>
				<a href="Main.jsp" lang="en"><em>Eau de parfum</em></a>
			<%if(email == null){%> 
					<a href="Join.jsp" class="side">회원가입</a> <span></span>
					<a href="Login.jsp" class="side">로그인</a> <span></span>
			
			<% }else{%>           	
            	<a href="Main.jsp" class="side">회원정보</a><span></span>
            	<a href="LogoutServlet" class="side">로그아웃</a><span></span>
            
            <%} %>
			</h1>
		</div>
		
		
		
			<nav id="step">
		<a class="step" href="Gender.jsp">STEP1</a> <a class="step"
			href="Season.jsp">STEP2</a> <a class="step" href="Accords.jsp">STEP3</a>
	</nav>
	</header>










<section>
	
		<h1>성별을 선택하세요.</h1>
		<div>
		<form action="Set_gender" method="post">
			<p>
				남자<br>Men
			</p>
			<input type="submit" id="men" name="gender" value="men"><label
				for="men"></label>
				</form>
		</div>
		<div>
		<form action="Set_gender" method="post">
			<p>
				여자<br>Women
			</p>
			<input type="submit" id="women" name="gender" value="women"><label
				for="women"></label>
				</form>
		</div>
		<div>
		<form action="Set_gender" method="post">
			<p>
				남여공용<br>Unisex
			</p>
			<input type="submit" id="anyway" name="gender" value="women and men"><label
				for="anyway"></label>
		</div>

	</form>
</section>
</body>
</html>