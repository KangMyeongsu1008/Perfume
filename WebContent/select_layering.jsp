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
	background-image: url('./background_image/���̾����(������).png');
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
	background-image: url('./image/�߶��ϰ� ������ �纻.png');
}

input[type=submit]#lovely+label {
	background-image: url('./image/��������� �Ϳ��� �纻.png');
}

input[type=submit]#edge+label {
	background-image: url('./image/���õǰ� ������ �纻.png');
}

input[type=submit]#sexy+label {
	background-image: url('./image/�����ϰ� ��Ȥ���� �纻.png');
}

input[type=submit]#femine+label {
	background-image: url('./image/���������� �纻.png');
}

input[type=submit]#elegance+label {
	background-image: url('./image/����� �纻.png');
}

input[type=submit]#sensation+label {
	background-image: url('./image/������ �����̼� �纻.png');
}

input[type=submit]#muture+label {
	background-image: url('./image/����ϰ� ������ �纻.png');
}

input[type=submit]#intelligence+label {
	background-image: url('./image/û���ϰ� ��������� �纻.png');
}

input[type=submit]#man+label {
	background-image: url('./image/������ �纻.png');
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
			<%
				if (email == null) {
			%>
			<a href="Gender.jsp">���������</a> <a href="select_layering.jsp">������̾</a>


			<%
				} else {
			%>
			<a href="Gender.jsp">���������</a> <a href="select_layering.jsp">������̾</a>
			<a href="favorite.jsp">���ã��</a> <a href="layering_favorite.jsp">���̾���ã��</a>

			<%
				}
			%>

		</nav>
	</header>

<section>
	<h1>���̾ ����</h1>


	<div class="hvrbox">
		<label for="fresh"><p>û����</p></label>
		<form action="Find_perfumeLayering" method="post" class="first">

			<input type="submit" id="intelligence" name="accords" value="FLOWERS"><label
				for="intelligence" class="hvrbox-layer_bottom"> </label> <input
				type="hidden" name="accords" value="FLOWERS">
				<input type="hidden" name="kor_accord" value="û����">
				
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">�÷η� ��� �÷η� ���� ���� û���ϰ� ��������� ������ �ش�.</div>
	
			</div>
		</form>
	</div>

	<div class="hvrbox">
		<label for="muture"><p>������</p></label>
		<form action="Find_perfumeLayering" method="post" class="second">

			<input type="submit" id="muture" name="accords"
				value="WOODS AND MOSSES"><label for="muture"
				class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="MUSK, AMBER, ANIMALIC SMELLS">
				<input type="hidden" name="kor_accord" value="������">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">�ӽ�ũ��� ������� ������ Ư¡�� �ٷ� ���� ������ ���� ����. ��
					������ ��ǰ �ִ� �����⸦ ������ ���̴�.</div>
			</div>
		</form>
	</div>

	<div class="hvrbox">
		<label for="edge"><p>������</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="edge" name="accords" value="CITRUS SMELLS"><label
				for="edge" class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="WOODS AND MOSSES">
				<input type="hidden" name="kor_accord" value="���õ�">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">��Ʈ���� ��� ��� ���� ������ ��ݵ� ���԰��� ���� �ŷ���
					ǳ���.</div>
			</div>

		</form>
	</div>


	<div class="hvrbox">
		<label for="femine"><p>����������</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="femine" name="accords"
				value="RESINS AND BALSAMS"><label for="femine"
				class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="FLOWERS">
				<input type="hidden" name="kor_accord" value="����������">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">�ܾ��ϰ� ����� �÷η� ��� ������Ż ���� ���̾�ϸ� ǳ���ϰ�
					������ ���� ���� �� �ִ�.</div>
			</div>
		</form>

	</div>
	<div class="hvrbox">
		<label for="lovely"><p>���������</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="lovely" name="accords" value="FLOWERS"><label
				for="lovely" class="hvrbox-layer_bottom"></label> <input
				type="hidden" name="accords" value="FRUITS, VEGETABLES AND NUTS">
				<input type="hidden" name="kor_accord" value="���������">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">�÷η� ��� Ǫ��Ƽ�� ������ ������ ��������� ��õ�ϴ� ��⸸
					�þƵ� ��ŭ�� �̼Ұ� ������ ù����� �����Ű�� ������ �����̴�.</div>
			</div>
		</form>
	</div>
	<div class="hvrbox">
		<label for="sexy"><p>������</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="sexy" name="accords"
				value="RESINS AND BALSAMS"><label for="sexy"
				class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="FRUITS, VEGETABLES AND NUTS">
				<input type="hidden" name="kor_accord" value="������">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">�÷�Ƽ ��� ������Ż ��� ���� ��︱ �� ���� ���� �� �迭��
					������ �����ϰ� ������ ������ ��ź���Ѵ�.</div>
			</div>

		</form>

	</div>

	<div class="hvrbox">
		<label for="man"><p>����������</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="man" name="accords" value="CITRUS SMELLS"><label
				for="man" class="hvrbox-layer_bottom"></label> <input type="hidden"
				name="accords" value="WOODS AND MOSSES">
				<input type="hidden" name="kor_accord" value="����������">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">������ ������ ��Ʈ���� ��� ��޽����� ��� ���� ���� �����̰�
					�ش�ȭ�ȴ�.</div>
			</div>
		</form>
	</div>

	<div class="hvrbox">
		<label for="fresh"><p>��ŭ��</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="fresh" name="accords" value="FLOWERS"><label
				for="fresh" class="hvrbox-layer_bottom"></label> <input
				type="hidden" name="accords" value="CITRUS SMELLS">
				<input type="hidden" name="kor_accord" value="��ŭ��">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">��Ʈ���� ��� �÷η� ���� ������ �����ϰ� ��ŭ�� ������
					�����Ų��.</div>
			</div>
		</form>

	</div>
	<div class="hvrbox">
		<label for="elegance"><p>�����</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="elegance" name="accords" value="FLOWERS"><label
				for="elegance" class="hvrbox-layer_bottom"></label> <input
				type="hidden" name="accords" value="WOODS AND MOSSES">
				<input type="hidden" name="kor_accord" value="�����">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">���������� �÷η���� �����ϰ� ���� ������� ������ ����� ������
					���� �ϼ��ȴ�.</div>
			</div>
		</form>
	</div>

	<div class="hvrbox">
		<label for="sensation"><p>�����̼�</p></label>
		<form action="Find_perfumeLayering" method="post">
			<input type="submit" id="sensation" name="accords" value="FLOWERS"><label
				for="sensation" class="hvrbox-layer_bottom"></label> <input
				type="hidden" name="accords"
				value="NATURAL AND SYNTHETIC, POPULAR AND WEIRD">
				<input type="hidden" name="kor_accord" value="�����̼�]">
			<div class="hvrbox-layer_top">
				<div class="hvrbox-text">�ε巯�� �÷η� ������ ������ �Ŀ������ ������ �������ϸ� ������
					�ѹ��� �ڵ��ƺ��� ����� ���� �ϼ��ȴ�.</div>
			</div>
		</form>

	</div>


</section>
</body>

</html>