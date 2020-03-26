
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Eau de perfum</title>
<style>
*{
	margin: 0;
}

* :lang(en){
	margin: 0px;
	font-family: serif;
}

a {
	text-decoration: none;
}

header>nav :visited, section :visited,header>nav :link {
	color: white;
}

header>nav :hover, header>ul:visited, header>ul :hover, section :hover {
	color: black;
}

header>ul :link {
	color: grey;
}

header>h1>a:visited, header>h1>a :hover, header>h1>a :link {
	color: dimgrey;
}

header {
	background-color: whitesmoke;
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
	text-align: center;
	background-color: dimgrey;
	vertical-align: middle;
	height: 40px;
}

header>nav>a {
	margin: 0px;
	padding-right: 150px;
	padding-left: 150px;
	font-size: 1.2em;
	padding-top: 5px;
}

fieldset {
	font-size: 20px;
	width: 33%;
	line-height: 30px;
	margin-left: 33%;
}

input[type=text], select {
	width: 400px;
	height: 30px;
	display: flex;
	align-content: center;
}

input[type=submit] {
	float: right;
	height: 40px;
	width: 80px;
}

input[type=radio] {
	height: 20px;
	width: 20px;
	vertical-align: baseline;
}
</style>
</head>
<body>
	<header id=main_header>

		<h1>
			<a href="Main.jsp" lang="en"><em>Eau de parfum</em></a>
		</h1>

		<ul>
			<a href="LogoutServlet">�α׾ƿ�</a>
			<span></span>
			<a href="All_member.jsp">ȸ����ȸ</a>
			<span></span>
			<a href="Manager_perfume.jsp">�����ȸ</a>
			<span></span>

		</ul>

	</header>



	<fieldset>
		<legend>
			<h1>����������</h1>
		</legend>
		<form action="Manger_insert" mehtod="post">
			�귣�� : <input type="text" name="brand"><br> �̸� : <input
				type="text" name="name"><br> ����<input type="radio"
				name="gender" value="men"> ����<input type="radio"
				name="gender" value="women"> �������<input type="radio"
				name="gender" value="women and men"><br>
			<br> ž��Ʈ : <input type="text" name="top"><br> �̵��Ʈ
			: <input type="text" name="middle"><br> ���̽���Ʈ : <input
				type="text" name="base"><br> ž������ : <input type="text"
				name="top_main"><br> ������ : <input type="text"
				name="main"><br> ��<input type="radio" name="season"
				value="spring"> ����<input type="radio" name="season"
				value="summer"> ����<input type="radio" name="season"
				value="autumn"> �ܿ�<input type="radio" name="season"
				value="winter"><br>
			<br> �̹������<input type="text" name="img"><br> �迭 <select
				name="accords" size="1">
				<option name="accords" value="CITRUS SMELLS">��Ʈ����</option>
				<option name="accords" value="FLOWERS">�÷η�</option>
				<option name="accords" value="WOODS AND MOSSES">���</option>
				<option name="accords" value="RESINS AND BALSAMS">������Ż</option>
				<option name="accords" value="MUSK, AMBER, ANIMALIC SMELLS">�ӽ�ũ</option>
				<option name="accords"
					value="NATURAL AND SYNTHETIC, POPULAR AND WEIRD">�Ŀ����</option>
				<option name="accords" value="FRUITS, VEGETABLES AND NUTS">�÷�Ƽ</option>
				<option name="accords" value="GREENS, HERBS AND FOUGERES">�׸�</option>

			</select> <input type="submit" value="���">

		</form>
	</fieldset>
</body>
</html>