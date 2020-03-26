<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Eau de perfum</title>
<style type="text/css">
*	{
	margin: 0;

}


a :lang(en){
	
	font-family: serif;
}

a {
	text-decoration: none;
}

header>nav :visited, section :visited , header>nav :link{
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
fieldset{
top: 30%;
left : 30%;
position : absolute;
width:800px;
height: 480px;
text-align: center;
border-style: none;

}

input{

height: 80px;
width:  400px;
font-size: 20px;
margin-bottom: 3%;
vertical-align: top;


}
input[type=submit]{
height:60px;
width:490px;
}


input[type=button]{
width:490px;
background-color: dimgrey;
color:white;
height:60px;
}
img {

line-height : 50px;
text-align: center;
vertical-align :middle;
height :86px;
width: 86px;
}

</style>
</head>
<body>

<% 
session = request.getSession();
String email = (String) session.getAttribute("email");

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

<form action="Login" method="post">
<fieldset>
<legend><h1>로그인</h1></legend>
<img src="./images/ID.png" alt="id"><input type="text" name="email" placeholder="Email을 입력하세요"><br>
<img src="./images/PW.png" alt="pw"><input type="password" name="pw" placeholder="PW을 입력하세요"><br>
<input type="submit" value="로그인"><br>
<a href="Join.jsp"><input type="button" value="회원가입">
</fieldset>
</form>

</body>
</html>