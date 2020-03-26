<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

nav :visited, section :visited , nav :link{
	color: white;
}

nav :hover, header>ul:visited {
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
	background-image: url('./background_image/선호계열페이지(불투명).png');
	background-repeat: no-repeat;
	background-size: 100% 100%;
	text-align: center;

}

section>form>h1 {
	font-size: 40px;
	color: white;
	text-align: center;
	padding-top: 30px;
}

input[type=checkbox], input[type=submit] {
	display: none;
}

input[type=checkbox]+label {
	float: right;
	cursor: pointer;
	background-size: cover;
	background-repeat: no-repeat;
	width: 200px;
	height: 200px;
	border-radius: 50%;
}

/* input태그에 이미지넣기 */
input[type=checkbox]#Floral+label {
	background-image: url('./image/플로럴 사본.png');
}

input[type=checkbox]#Fruit+label {
	background-image: url('./image/플룻티 사본.png');
}

input[type=checkbox]#Citrus+label {
	background-image: url('./image/시트러스 사본.png');
}

input[type=checkbox]#Woody+label {
	background-image: url('./image/우디 사본.png');
}

input[type=checkbox]#Musk+label {
	background-image: url('./image/머스크 사본.png');
}

input[type=checkbox]#Green+label {
	background-image: url('./image/그린 사본.png');
}

input[type=checkbox]#Powdery+label {
	background-image: url('./image/파우더리 사본.png');
}

input[type=checkbox]#Oriental+label {
	background-image: url('./image/오리엔탈 사본.png');
}

input[type=checkbox]#Floral:checked+label {
	background-image: url('./image/플로럴(불투명도).png');
}

input[type=checkbox]:checked+label>p {
	padding-top: 100%;
	color: #01DF01;
}

input[type=checkbox]#Fruit:checked+label {
	background-image: url('./image/플룻티(불투명도).png');
}

input[type=checkbox]#Citrus:checked+label {
	background-image: url('./image/시트러스(불투명도).png');
}

input[type=checkbox]#Woody:checked+label {
	background-image: url('./image/우디(불투명도).png');
}

input[type=checkbox]#Musk:checked+label {
	background-image: url('./image/머스크(불투명도).png');
}

input[type=checkbox]#Green:checked+label {
	background-image: url('./image/그린(불투명도).png');
}

input[type=checkbox]#Powdery:checked+label {
	background-image: url('./image/파우더리(불투명도).png');
}

input[type=checkbox]#Oriental:checked+label {
	background-image: url('./image/오리엔탈(불투명도).png');
}

#high, #below {
	margin-top: 3%;
	margin-bottom: 10%;
	margin-right: 85px;
}


label>p {
	padding-top: 100%;
	color: white;
}

input[type=submit]#end+label {
	cursor: pointer;
	font-size: 30px;
	color: white;
	text-align: center;
	display: table-cell;
}

.hvrbox, .hvrbox *, .hvrbox2, .hvrbox2 * {
	box-sizing: border-box;
}

.hvrbox, .hvrbox2 {
	position: relative;
	display: inline-block;
	max-width: 100%;
	width: 400px;
	height: 110px;
	vertical-align: middle;
	align-content: center;
}

.hvrbox .hvrbox-layer_bottom, .hvrbox2 .hvrbox-layer_bottom {
	display: block;
}

.hvrbox .hvrbox-layer_top, .hvrbox2 .hvrbox-layer_top {
	opacity: 0;
	position: absolute;
	top: -50px;
	left: 100px;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.6);
	color: #fff;
	padding: 10px;
	-moz-transition: all 0.4s ease-in-out 0s;
	-webkit-transition: all 0.4s ease-in-out 0s;
	-ms-transition: all 0.4s ease-in-out 0s;
	transition: all 0.4s ease-in-out 0s;
}

.hvrbox:hover .hvrbox-layer_top, .hvrbox.active .hvrbox-layer_top,
	.hvrbox2:hover .hvrbox-layer_top, .hvrbox2.active .hvrbox-layer_top {
	opacity: 1;
}

.hvrbox .hvrbox-text, .hvrbox2 .hvrbox-text {
	font-size: 15px;
	display: inline-block;
	text-align: left;
	line-height: 24px;
}
</style>
</head>
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
			<a class="step" href="Gender.jsp">STEP1</a> <a class="step"
				href="Season.jsp">STEP2</a> <a class="step" href="Accords.jsp">STEP3</a>
		</nav>
	</header>

	<section>

		<form action="Find_perfumeTop5" method="post">
			<h1>선호하는 계열을 모두 선택해주세요.</h1>
			<div id="high">
				<div class="hvrbox">
					<input type="checkbox" id="Floral" name="accords" value="FLOWERS"
						alt="Floral"><label for="Floral"
						class="hvrbox-layer_bottom">
						<p>
							Floral<br>플로럴
						</p>
					</label>
					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">꽃향이 주를 이룬다. 단 한 가지 꽃이 아니고 여러 종류의 꽃이
							어우러져 만들어내는 꽃향기를 의미한다. 향이 진하지 않고 거부감이 없으면서 달콤한 것이 특징</div>
					</div>
				</div>
				
				
				<div class="hvrbox">
					<input type="checkbox" id="Fruit" name="accords"
						value="FRUITS, VEGETABLES AND NUTS" alt="Fruit"><label
						for="Fruit" class="hvrbox-layer_bottom">
						<p>
							Fruit<br>플룻티
						</p>
					</label>
					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">사과, 복숭아, 바나나 등 달콤하고 상큼한 열대 과일 향을
							말한다. 누구나 부담 없이 사용할 수 있는 향으로 가벼운 과일향으로 트렌디한 느낌</div>
					</div>
				</div>
				
				
				<div class="hvrbox">
					<input type="checkbox" id="Citrus" name="accords"
						value="CITRUS SMELLS" alt="Citrus"><label for="Citrus"
						class="hvrbox-layer_bottom">
						<p>
							Citrus<br>시트러스
						</p>
					</label>
					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">오렌지, 레몬, 포도 등 과일류의 상큼하고 신선한 이미지로
							현대적인 상쾌함을 가진 가볍고 휘발성이 큰 향이다. 향이 가볍고 부담이 없어서 남, 여 모두가 사용해도 무난한 향
							</div>
					</div>
				</div>


				<div class="hvrbox">
					<input type="checkbox" id="Woody" name="accords"
						value="WOODS AND MOSSES" alt="Woody"><label for="Woody"
						class="hvrbox-layer_bottom">
						<p>
							Woody<br>우디
						</p>
					</label>
					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						나무뿌리, 나무껍질, 풀, 이끼 등이 어우러진 향이다. 무겁고 드라이한 향으로 따뜻하고 부드러우며 고상한 느낌의 이미지를 부여해준다. 
						</div>
					</div>
				</div>
			</div>

			<div id="below">
				<div class="hvrbox2">

					<input type="checkbox" id="Musk" name="accords"
						value="MUSK, AMBER, ANIMALIC SMELLS" alt="CITRUS"> <label
						for="Musk" class="hvrbox-layer_bottom"><p>
							Musk<br>머스크
						</p></label>
											<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						관능적이고 독특한 향조로 머스크, 팅크쳐, 머스콘 등이 사용된다. 대표적인 향수로는 불가리 팜므, 유포리아, 구찌 바이 구찌 등이 있다.
						</div>
					</div>

				</div>
				
				
				<div class="hvrbox2">
					<input type="checkbox" id="Green" name="accords"
						value="GREENS, HERBS AND FOUGERES" alt="CITRUS"><label
						for="Green" class="hvrbox-layer_bottom">
						<p>
							Green<br>그린
						</p>
					</label>
											<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						가벼운 녹색의 풀 이미지로 나뭇잎, 나뭇가지, 물, 초원 등을 연상시키는 싱그럽고 풋풋한 느낌을 주는 향. 프레시하고 고급스러운 이미지를 표현 해 주는 향으로 가벼운 향을 즐기는 사람에게 어울린다. 
						</div>
					</div>



				</div>
				<div class="hvrbox2">

					<input type="checkbox" id="Powdery" name="accords"
						value="NATURAL AND SYNTHETIC, POPULAR AND WEIRD" alt="CITRUS"><label
						for="Powdery" class="hvrbox-layer_bottom">
						<p>
							Powdery<br>파우더
						</p>
					</label>
																<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						벨벳, 파우더와 같이 부드러우면서 동시에 관능적인 물질을 연상시키는 향조. 텁텁한 느낌을 줄 수 있어 추운 계절에 어울리는 향조이다.
						</div>
					</div>

				</div>
				<div class="hvrbox2">

					<input type="checkbox" id="Oriental" name="accords"
						value="RESINS AND BALSAMS" alt="CITRUS"><label
						for="Oriental" class="hvrbox-layer_bottom">
						<p>
							Oriental<br>오리엔탈
						</p>
					</label>
																					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						식물의 수지와 동물성 향료를 주조로 만들어 무겁고 어두운 느낌을 주는 반면 여성의 신비함과 우아함을 표현해 주는 향수. 짙고 강한 향과 섹시한 느낌을 주는데 매우 효과적이다. 지속성이 좋다.

						</div>
					</div>

				</div>
			</div>
			<span> <input type="submit" id="end" value="결과보기"><label
				for="end">결과보기 >></label>
			</span>
		</form>

	</section>
</body>

</html>