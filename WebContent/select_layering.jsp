<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<title>Eau de parfum</title>
</head>
<style>
* {
	margin: 0;
}

a :lang(en) {
	margin: 0px;
	font-family: serif;
}

a {
	text-decoration: none;
}

nav :visited, section :visited, nav :link  {
	color: white;
}

nav :hover, header>ul:visited, section :hover {
	color: #01DF01;
}

section{
color :white;
font-size: 20px;
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

section>h1 {
	font-size: 40px;
	color: white;
	text-align: center;
	padding-top: 20px;
}

/* <!--section--> */
section {
	border: "1px solid grey";
	height: 1000px;
	background-image: url('./background_image/레이어링선택(불투명).png');
	background-size: 100% 100%;
	text-align: center;
}


form {
	display: inline-block;
	margin-top: 5%;
	margin-bottom: 5%;
	}

ul {
	text-align: center;
}

input[type=submit] {
	display: none;
}

input[type=submit]+label {
	display: inline-block;
	cursor: pointer;
	width: 40px;
	height: 40px;
	background-size: 100% 100%;
	padding: 55px 70px 55px 70px;
	margin: 15px 50px 15px 50px;
	z-index: 1;
}

input[type=submit]#fresh+label {
	background-image: url('./image/발랄하고 상쾌한 사본.png');
}

input[type=submit]#lovely+label {
	background-image: url('./image/사랑스럽고 귀여운 사본.png');
}

input[type=submit]#edge+label {
	background-image: url('./image/세련되고 지적인 사본.png');
}

input[type=submit]#sexy+label {
	background-image: url('./image/섹시하고 매혹적인 사본.png');
}

input[type=submit]#femine+label {
	background-image: url('./image/여성스러운 사본.png');
}

input[type=submit]#elegance+label {
	background-image: url('./image/우아한 사본.png');
}

input[type=submit]#sensation+label {
	background-image: url('./image/찰나의 센세이션 사본.png');
}

input[type=submit]#muture+label {
	background-image: url('./image/우아하고 성숙한 사본.png');
}

input[type=submit]#intelligence+label {
	background-image: url('./image/청순하고 사랑스러운 사본.png');
}

input[type=submit]#man+label {
	background-image: url('./image/남성미 사본.png');
}



.hvrbox, .hvrbox * {
	box-sizing: border-box;
}

.hvrbox {
	position: relative;
	display: inline-block;
	max-width: 100%;
	width: 400px;
	height: 70px;
	display: inline-block;
}

.hvrbox .hvrbox-layer_bottom {
	display: block;
}

.hvrbox .hvrbox-layer_top {
	opacity: 0;
	position: absolute;
	top: 150px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.6);
	color: #fff;
	padding: 15px;
	-moz-transition: all 0.4s ease-in-out 0s;
	-webkit-transition: all 0.4s ease-in-out 0s;
	-ms-transition: all 0.4s ease-in-out 0s;
	transition: all 0.4s ease-in-out 0s;
	text-align: left;
}

.hvrbox:hover .hvrbox-layer_top, .hvrbox.active .hvrbox-layer_top {
	opacity: 1;
}

.hvrbox .hvrbox-text {
	font-size: 15px;
	display: inline-block;
	position: absolute;
}


</style>
<%
	session = request.getSession();
	String email = (String) session.getAttribute("email");
%>


<body>


	<header id=main_header>
		<div>
			<h1>
				<a href="Main.jsp" lang="en"><em>Eau de parfum</em></a>
				<%
					if (email == null) {
				%>
				<a href="Join.jsp" class="side">회원가입</a> <span></span> <a
					href="Login.jsp" class="side">로그인</a> <span></span>

				<%
					} else {
				%>
				<a href="Main.jsp" class="side">회원정보</a><span></span> <a
					href="LogoutServlet" class="side">로그아웃</a><span></span>

				<%
					}
				%>
			</h1>
		</div>

		<nav id="step">
			<%
				if (email == null) {
			%>
			<a href="Gender.jsp">나만의향수</a> <a href="select_layering.jsp">향수레이어링</a>


			<%
				} else {
			%>
			<a href="Gender.jsp">나만의향수</a> <a href="select_layering.jsp">향수레이어링</a>
			<a href="favorite.jsp">즐겨찾기</a> <a href="layering_favorite.jsp">레이어링즐겨찾기</a>

			<%
				}
			%>

		</nav>
	</header>

<section>
	<h1>레이어링 선택</h1>


	<div class="hvrbox">
		<label for="fresh"><p>청순한</p></label>
		<form action="Find_perfumeLayering" method="post" class="first">

			<input type="submit" id="intelligence" name="accords" value="FLOWERS"><label
				for="intelligence" class="hvrbox-layer_bottom"> </label> <input
				type="hidden" name="accords" value="FLOWERS">
				<input type="hidden" name="kor_accord" value="청순한">
				
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">플로럴 향과 플로럴 향이 만나 청순하고 사랑스러운 느낌을 준다.</div>
	
			</div>
		</form>
	</div>

	<div class="hvrbox">
		<label for="muture"><p>성숙한</p></label>
		<form action="Find_perfumeLayering" method="post" class="second">

			<input type="submit" id="muture" name="accords"
				value="WOODS AND MOSSES"><label for="muture"
				class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="MUSK, AMBER, ANIMALIC SMELLS">
				<input type="hidden" name="kor_accord" value="성숙한">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">머스크향과 우디향의 조합의 특징은 바로 진한 여운이 남는 잔향. 이
					잔향이 기품 있는 분위기를 선사할 것이다.</div>
			</div>
		</form>
	</div>

	<div class="hvrbox">
		<label for="edge"><p>지적인</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="edge" name="accords" value="CITRUS SMELLS"><label
				for="edge" class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="WOODS AND MOSSES">
				<input type="hidden" name="kor_accord" value="세련된">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">시트러스 향과 우디 향의 조합은 상반된 무게감이 묘한 매력을
					풍긴다.</div>
			</div>

		</form>
	</div>


	<div class="hvrbox">
		<label for="femine"><p>여성스러운</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="femine" name="accords"
				value="RESINS AND BALSAMS"><label for="femine"
				class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="FLOWERS">
				<input type="hidden" name="kor_accord" value="여성스러운">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">단아하고 우아한 플로럴 향과 오리엔탈 향을 레이어링하면 풍부하고
					순수한 향을 느낄 수 있다.</div>
			</div>
		</form>

	</div>
	<div class="hvrbox">
		<label for="lovely"><p>사랑스러운</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="lovely" name="accords" value="FLOWERS"><label
				for="lovely" class="hvrbox-layer_bottom"></label> <input
				type="hidden" name="accords" value="FRUITS, VEGETABLES AND NUTS">
				<input type="hidden" name="kor_accord" value="사랑스러운">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">플로럴 향과 푸르티의 조합은 새내기 여대생에게 추천하는 향기만
					맡아도 상큼한 미소가 번지는 첫사랑을 연상시키는 러블리한 조합이다.</div>
			</div>
		</form>
	</div>
	<div class="hvrbox">
		<label for="sexy"><p>섹시한</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="sexy" name="accords"
				value="RESINS AND BALSAMS"><label for="sexy"
				class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="FRUITS, VEGETABLES AND NUTS">
				<input type="hidden" name="kor_accord" value="섹시한">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">플루티 향과 오리엔탈 향과 같이 어울릴 것 같지 않은 두 계열이
					만나면 과감하고 섹시한 향으로 재탄생한다.</div>
			</div>

		</form>

	</div>

	<div class="hvrbox">
		<label for="man"><p>남성스러운</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="man" name="accords" value="CITRUS SMELLS"><label
				for="man" class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="WOODS AND MOSSES">
				<input type="hidden" name="kor_accord" value="남성스러운">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">스포츠 버전의 시트러스 향과 고급스러운 우디 향이 만나 남성미가
					극대화된다.</div>
			</div>
		</form>
	</div>

	<div class="hvrbox">
		<label for="fresh"><p>상큼한</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="fresh" name="accords" value="FLOWERS"><label
				for="fresh" class="hvrbox-layer_bottom"></label> <input
				type="hidden" name="accords" value="CITRUS SMELLS">
				<input type="hidden" name="kor_accord" value="상큼한">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">시트러스 향과 플로럴 향의 조합은 달콤하고 상큼한 느낌을
					연상시킨다.</div>
			</div>
		</form>

	</div>
	<div class="hvrbox">
		<label for="elegance"><p>우아한</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="elegance" name="accords" value="FLOWERS"><label
				for="elegance" class="hvrbox-layer_bottom"></label> <input
				type="hidden" name="accords" value="WOODS AND MOSSES">
				<input type="hidden" name="kor_accord" value="우아한">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">여성스러운 플로럴향과 은은하고 깊은 우디향이 만나면 우아한 느낌의
					향이 완성된다.</div>
			</div>
		</form>
	</div>

	<div class="hvrbox">
		<label for="sensation"><p>센세이션</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="sensation" name="accords" value="FLOWERS"><label
				for="sensation" class="hvrbox-layer_bottom"></label> <input
				type="hidden" name="accords"
				value="NATURAL AND SYNTHETIC, POPULAR AND WEIRD">
				<input type="hidden" name="kor_accord" value="센세이션]">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">부드러운 플로럴 향으로 시작해 파우더리한 향으로 마무리하면 누구나
					한번쯤 뒤돌아보게 만드는 향이 완성된다.</div>
			</div>
		</form>

	</div>


</section>
</body>

</html>