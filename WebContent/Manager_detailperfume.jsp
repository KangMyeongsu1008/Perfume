<%@page import="comp.VO.perfumeVO"%>
<%@page import="java.util.ArrayList"%>
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



fieldset {
	font-size: 20px;
	width: 33%;
	line-height: 30px;
	margin-left: 33%;
	margin-right: 33%;
}

form {
	
}

input[type=text] {
	width: 50%;
	float: right;
}

input[type=submit] {
	float: right;
}
</style>

</head>
<body>

    <header id=main_header>

        <h1><a href="Main.jsp" lang="en"><em>Eau de parfum</em></a></h1>

        <ul>
                <a href="LogoutServlet">로그아웃</a><span></span>
            	<a href="All_member.jsp">회원조회</a><span></span>
            	<a href="Manager_perfume.jsp">향수조회</a><span></span>
      
        </ul>
        
        </header>

<%	
	session = request.getSession();
	ArrayList<perfumeVO> detail_arr =(ArrayList<perfumeVO>) session.getAttribute("detail_arr");
	
%>




	<fieldset id="perfume">
	<legend>향수번호 : <%=detail_arr.get(0).getPerfume_num() %></legend>
	<form action="Manager_update" method="post">
			<p>성별 : <%=detail_arr.get(0).getGender()%></p>
			<p>브랜드 : <input type="text" name="brand" value = "<%=detail_arr.get(0).getBrand()%>"></p>		
			<p>이름 : <input type="text" name="name" value = "<%=detail_arr.get(0).getName()%>"></p>			
			<p>탑메인향 : <input type="text" name="top_main" value = "<%=detail_arr.get(0).getTop_main()%>"></p>
			<p>메인향 : <input type="text" name="main" value = "<%=detail_arr.get(0).getMain()%>"></p>
			<p>탑노트 : <input type="text" name="top" value = "<%=detail_arr.get(0).getTop()%>"></p>
			<p>미들노트 : <input type="text" name="middle" value = "<%=detail_arr.get(0).getMiddle()%>"><br> 
			<p>베이스노트 : <input type="text" name="base" value = "<%=detail_arr.get(0).getBase()%>"></p>
			<p>이미지경로 : <input type="text" name="img" value = "<%=detail_arr.get(0).getImg()%>"></p>
			<p>계열: <input type="text" name="accords" value = "<%=detail_arr.get(0).getAccords()%>"></p>
			<input type="hidden" name="perfume_num" value = "<%=detail_arr.get(0).getPerfume_num() %>">
			<a herf="#a" onclick="alert('수정되었습니다.')"><input type="submit" value="수정"></a>
			
	</form>
	</fieldset>






</body>
</html>