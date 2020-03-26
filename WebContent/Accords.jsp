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
	background-image: url('./background_image/��ȣ�迭������(������).png');
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

/* input�±׿� �̹����ֱ� */
input[type=checkbox]#Floral+label {
	background-image: url('./image/�÷η� �纻.png');
}

input[type=checkbox]#Fruit+label {
	background-image: url('./image/�÷�Ƽ �纻.png');
}

input[type=checkbox]#Citrus+label {
	background-image: url('./image/��Ʈ���� �纻.png');
}

input[type=checkbox]#Woody+label {
	background-image: url('./image/��� �纻.png');
}

input[type=checkbox]#Musk+label {
	background-image: url('./image/�ӽ�ũ �纻.png');
}

input[type=checkbox]#Green+label {
	background-image: url('./image/�׸� �纻.png');
}

input[type=checkbox]#Powdery+label {
	background-image: url('./image/�Ŀ���� �纻.png');
}

input[type=checkbox]#Oriental+label {
	background-image: url('./image/������Ż �纻.png');
}

input[type=checkbox]#Floral:checked+label {
	background-image: url('./image/�÷η�(������).png');
}

input[type=checkbox]:checked+label>p {
	padding-top: 100%;
	color: #01DF01;
}

input[type=checkbox]#Fruit:checked+label {
	background-image: url('./image/�÷�Ƽ(������).png');
}

input[type=checkbox]#Citrus:checked+label {
	background-image: url('./image/��Ʈ����(������).png');
}

input[type=checkbox]#Woody:checked+label {
	background-image: url('./image/���(������).png');
}

input[type=checkbox]#Musk:checked+label {
	background-image: url('./image/�ӽ�ũ(������).png');
}

input[type=checkbox]#Green:checked+label {
	background-image: url('./image/�׸�(������).png');
}

input[type=checkbox]#Powdery:checked+label {
	background-image: url('./image/�Ŀ����(������).png');
}

input[type=checkbox]#Oriental:checked+label {
	background-image: url('./image/������Ż(������).png');
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
				<a href="Join.jsp" class="side">ȸ������</a> <span></span> <a
					href="Login.jsp" class="side">�α���</a> <span></span>

				<%
					} else {
				%>
				<a href="Main.jsp" class="side">ȸ������</a><span></span> <a
					href="LogoutServlet" class="side">�α׾ƿ�</a><span></span>

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
			<h1>��ȣ�ϴ� �迭�� ��� �������ּ���.</h1>
			<div id="high">
				<div class="hvrbox">
					<input type="checkbox" id="Floral" name="accords" value="FLOWERS"
						alt="Floral"><label for="Floral"
						class="hvrbox-layer_bottom">
						<p>
							Floral<br>�÷η�
						</p>
					</label>
					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">������ �ָ� �̷��. �� �� ���� ���� �ƴϰ� ���� ������ ����
							��췯�� ������ ����⸦ �ǹ��Ѵ�. ���� ������ �ʰ� �źΰ��� �����鼭 ������ ���� Ư¡</div>
					</div>
				</div>
				
				
				<div class="hvrbox">
					<input type="checkbox" id="Fruit" name="accords"
						value="FRUITS, VEGETABLES AND NUTS" alt="Fruit"><label
						for="Fruit" class="hvrbox-layer_bottom">
						<p>
							Fruit<br>�÷�Ƽ
						</p>
					</label>
					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">���, ������, �ٳ��� �� �����ϰ� ��ŭ�� ���� ���� ����
							���Ѵ�. ������ �δ� ���� ����� �� �ִ� ������ ������ ���������� Ʈ������ ����</div>
					</div>
				</div>
				
				
				<div class="hvrbox">
					<input type="checkbox" id="Citrus" name="accords"
						value="CITRUS SMELLS" alt="Citrus"><label for="Citrus"
						class="hvrbox-layer_bottom">
						<p>
							Citrus<br>��Ʈ����
						</p>
					</label>
					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">������, ����, ���� �� ���Ϸ��� ��ŭ�ϰ� �ż��� �̹�����
							�������� �������� ���� ������ �ֹ߼��� ū ���̴�. ���� ������ �δ��� ��� ��, �� ��ΰ� ����ص� ������ ��
							</div>
					</div>
				</div>


				<div class="hvrbox">
					<input type="checkbox" id="Woody" name="accords"
						value="WOODS AND MOSSES" alt="Woody"><label for="Woody"
						class="hvrbox-layer_bottom">
						<p>
							Woody<br>���
						</p>
					</label>
					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						�����Ѹ�, ��������, Ǯ, �̳� ���� ��췯�� ���̴�. ���̰� ������� ������ �����ϰ� �ε巯��� ����� ������ �̹����� �ο����ش�. 
						</div>
					</div>
				</div>
			</div>

			<div id="below">
				<div class="hvrbox2">

					<input type="checkbox" id="Musk" name="accords"
						value="MUSK, AMBER, ANIMALIC SMELLS" alt="CITRUS"> <label
						for="Musk" class="hvrbox-layer_bottom"><p>
							Musk<br>�ӽ�ũ
						</p></label>
											<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						�������̰� ��Ư�� ������ �ӽ�ũ, ��ũ��, �ӽ��� ���� ���ȴ�. ��ǥ���� ����δ� �Ұ��� �ʹ�, ��������, ���� ���� ���� ���� �ִ�.
						</div>
					</div>

				</div>
				
				
				<div class="hvrbox2">
					<input type="checkbox" id="Green" name="accords"
						value="GREENS, HERBS AND FOUGERES" alt="CITRUS"><label
						for="Green" class="hvrbox-layer_bottom">
						<p>
							Green<br>�׸�
						</p>
					</label>
											<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						������ ����� Ǯ �̹����� ������, ��������, ��, �ʿ� ���� �����Ű�� �̱׷��� ǲǲ�� ������ �ִ� ��. �������ϰ� ��޽����� �̹����� ǥ�� �� �ִ� ������ ������ ���� ���� ������� ��︰��. 
						</div>
					</div>



				</div>
				<div class="hvrbox2">

					<input type="checkbox" id="Powdery" name="accords"
						value="NATURAL AND SYNTHETIC, POPULAR AND WEIRD" alt="CITRUS"><label
						for="Powdery" class="hvrbox-layer_bottom">
						<p>
							Powdery<br>�Ŀ��
						</p>
					</label>
																<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						����, �Ŀ���� ���� �ε巯��鼭 ���ÿ� �������� ������ �����Ű�� ����. ������ ������ �� �� �־� �߿� ������ ��︮�� �����̴�.
						</div>
					</div>

				</div>
				<div class="hvrbox2">

					<input type="checkbox" id="Oriental" name="accords"
						value="RESINS AND BALSAMS" alt="CITRUS"><label
						for="Oriental" class="hvrbox-layer_bottom">
						<p>
							Oriental<br>������Ż
						</p>
					</label>
																					<div class="hvrbox-layer_top">
						<div class="hvrbox-text">
						�Ĺ��� ������ ������ ��Ḧ ������ ����� ���̰� ��ο� ������ �ִ� �ݸ� ������ �ź��԰� ������� ǥ���� �ִ� ���. £�� ���� ��� ������ ������ �ִµ� �ſ� ȿ�����̴�. ���Ӽ��� ����.

						</div>
					</div>

				</div>
			</div>
			<span> <input type="submit" id="end" value="�������"><label
				for="end">������� >></label>
			</span>
		</form>

	</section>
</body>

</html>