<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Eau de parfum</title>
</head>
<style>
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

nav :visited , section :visited ,nav :link{
	color: white;
}

nav :hover, header>ul:visited,  section :hover {
	color: #01DF01;
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
        background-image: url('./background_image/계절페이지(불투명).png') ;
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
	display: inline-block;
	color: white;
	font-size : 20px;
	position: relative;
	margin-left: 20%;
	margin-bottom: 8%;
}
div.summer,div.winter{
margin-right: 20%;
}


input[type=submit] {
	display: none;
}

input[type=submit]+label {
	float:right;
	cursor: pointer;
	background-size: cover;
	background-repeat: no-repeat;
	width: 200px;
	height: 200px;
	border-radius: 50%;
}

/* input태그에 이미지넣기 */
input[type=submit]#spring+label {
	background-image: url('./image/봄 수정.png');
}

input[type=submit]#summer+label {
	background-image: url('./image/여름 사본.png');
}

input[type=submit]#autumn+label {
	background-image: url('./image/가을 사본.png');
}

input[type=submit]#winter+label {
	background-image: url('./image/겨울 사본.png');
}
</style>
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




		<h1>계절을 선택하세요</h1>
		<div class="spring">
	            <form action="Set_season"  method="post">
                <p>봄<br>Spring</p>
                <input type="submit" id="spring" name="season" value="spring"><label
                    for="spring"></label>
            
		</div>

		<div class="summer">
			<p>
				여름<br>Summer
			</p>
                         
                <input type="submit" id="summer" name="season" value="summer"><label
                    for="summer"></label>

		</div>
	<br>
		<div class="autumn">
			<p>
				가을<br>Autumn
			</p>

                
                <input type="submit" id="autumn" name="season" value="autumn"><label
                    for="autumn"></label>

		</div>

		<div class="winter">
			<p>
				겨울<br>Winter
			</p>
           
                <input type="submit" id="winter" name="season" value="winter"><label
                    for="winter"></label>
            </form>
		</div>



</section>
</body>

</html>