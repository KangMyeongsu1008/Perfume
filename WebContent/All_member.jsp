<%@page import="java.util.ArrayList"%>
<%@page import="comp.VO.memberVO"%>
<%@page import="comp.DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Eau de perfum</title>
<style type="text/css">
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

header>nav :visited , section :visited,header>nav :link{
	color: white;
}

header>nav :hover, header>ul:visited, header>ul :hover , section :hover {
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
	vertical-align:middle;
	height: 40px;
}

header>nav>a {
	margin: 0px;
	padding-right: 150px;
	padding-left: 150px;
	font-size: 1.2em;
	padding-top: 5px;
}



table {
	text-align: center;
	line-height: 20px;
	width: 100%;
}

form {
	display: inline-block;
}

td.btn {
	width: 20%;
}
</style>

</head>
<body>

	<header id=main_header>

		<h1>
			<a href="Main.jsp" lang="en"><em>Eau de parfum</em></a>
		</h1>

		<ul>
			<a href="LogoutServlet">로그아웃</a>
			<span></span>
			<a href="All_member.jsp">회원조회</a>
			<span></span>
			<a href="Manager_perfume.jsp">향수조회</a>
			<span></span>

		</ul>

	</header>



	<%
		memberDAO dao = new memberDAO();
		ArrayList<memberVO> vo = dao.SelectAll();
	%>

	<table border="1">
		<tr>
			<th>회원ID</th>
			<th>PW</th>
			<th>변경할 PW</th>
			<th></th>


		</tr>
		<%
			for (int i = 0; i < vo.size(); i++) {
		%>
		<tr>
			<td><%=vo.get(i).getEmail()%></td>
			<td><%=vo.get(i).getPw()%></td>
			<form action="Update" mehtod="post">
				<td><input type="text" name="update_pw"></td>
				<td class="btn">
					<input type="submit" name="update_email" value="수정"> 
					<input type="hidden" name="update_email" value="<%=vo.get(i).getEmail()%>">
			</form>
			<form action="Delete" mehtod="post">
				<input type="submit" name="delete_email" value="탈퇴"> 
				<input type="hidden" name="delete_email" value="<%=vo.get(i).getEmail()%>">
			</form>
			</td>
		</tr>
		<%
			}
		%>
	</table>



</body>
</html>