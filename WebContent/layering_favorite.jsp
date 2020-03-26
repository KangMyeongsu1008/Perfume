<%@page import="comp.VO.layeringlistVO"%>
<%@page import="comp.VO.perfumeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="comp.VO.memberVO"%>
<%@page import="comp.DAO.perfumeDAO"%>
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

body {
	background: url('./background_image/즐겨찾기, 결과창 화면(불투명).png') no-repeat center center fixed;
	background-size: cover;
	height: 100%;
	color : white;

}


img {
	width: 100px;
	height: 100px;
}

th {
	border-bottom: 2px solid white;
	font-size: 20px;
}


td {
	width: 300px;
	text-align: center;
	border-bottom: 2px solid white;
}


</style>
</head>

<body>
	<%
		session = request.getSession();
		int perfume_num1 = (Integer) session.getAttribute("perfume_num1");
		int perfume_num2 = (Integer) session.getAttribute("perfume_num2");
		perfumeDAO dao = new perfumeDAO();
		String email = (String) session.getAttribute("email");
		ArrayList<layeringlistVO> vo = dao.layering_selectAll(email);

	%>


    <header id=main_header>

        <h1><a href="Main.jsp" lang="en"><em>Eau de parfum</em></a></h1>

        <ul>
            <%if(email == null){%>
	            <a href="Login.jsp">로그인</a><span></span>
	            <a href="Join.jsp">회원가입</a><span></span>
            
            
            <%}else{ 
            	if(email.equals("admin")){%>
                <a href="LogoutServlet">로그아웃</a><span></span>
            	<a href="All_member.jsp">회원조회</a><span></span>
            	<a href="Manager_perfume.jsp">향수조회</a><span></span>
      
           	<% }else{%>
            	<a href="LogoutServlet">로그아웃</a><span></span>
            	<a href="Main.jsp">회원정보</a><span></span>
            
            <%} %>
            <%} %>
        </ul>
        <nav id= "dropdown">
        <%if(email == null){%>
            <a href="Gender.jsp">나만의향수</a>
            <a href="select_layering.jsp">향수레이어링</a>
            
            
            <%}else{%>
            <a href="Gender.jsp">나만의향수</a>
            <a href="select_layering.jsp">향수레이어링</a>
            <a href="favorite.jsp">즐겨찾기</a>
            <a href="layering_favorite.jsp">레이어링즐겨찾기</a>
            
            <%}%>
      
        </nav>

    </header>

	<table>
		<tr>
			<th class="blank"></th>
			<th>브랜드</th>
			<th>이름</th>
			<th class="vertical">메인향</th>
			<th class="blank"></th>
			<th>브랜드</th>
			<th>이름</th>
			<th>메인향</th>
			<th class="blank"></th>
		</tr>
		<%
			for (int j = 0; j < vo.size(); j++) {
				ArrayList<perfumeVO> arr1 = dao.favorite_layering_selectAll(vo.get(j).getPerfume_num1(), email);
				ArrayList<perfumeVO> arr2 = dao.favorite_layering_selectAll(vo.get(j).getPerfume_num2(), email);

				for (int i = 0; i < arr1.size(); i++) {
		%>

		<tr>
			<td class="blank"><img src='<%=arr1.get(i).getImg()%>'></td>
			<td><%=arr1.get(i).getBrand()%></td>
			<td><%=arr1.get(i).getName()%></td>
			<td class="vertical"><%=arr1.get(i).getAccords()%></td>
			<td class="blank"><img src='<%=arr2.get(i).getImg()%>'></td>
			<td><%=arr2.get(i).getBrand()%></td>
			<td><%=arr2.get(i).getName()%></td>
			<td><%=arr2.get(i).getAccords()%></td>
			<td class="blank">
				<form action="deleteFavorite_layering" method="post">
					 
					<input type="hidden" name="delete_layering" value="<%=arr1.get(i).getPerfume_num()%>">
					<input type="hidden" name="delete_layering" value="<%=arr2.get(i).getPerfume_num()%>">
					<input type="submit" value="삭제">
					
				</form>
			</td>
		</tr>
		<%}%>

		<%}%>
	
</body>
</html>