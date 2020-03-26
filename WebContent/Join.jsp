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

header>nav :hover,  header>ul :hover, section :hover {
	color: black;
}

header>ul:visited, header>ul :link {
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
left : 33%;
position : absolute;
border-top-style : solid;
width:600px;
height: 480px;

}

span {
word-spacing: 180px;
}

input{

font-size: 20px;
margin-bottom: 5%;

}

form{
margin-left: 9%;
}

input[type=radio]{
width: 20px;
height: 20px;
}

input[type=text]{
height: 80px;
width:  400px;
background-color: black;
}
input[type=submit]{
height:60px;
width:490px;
border-color : black;
background-color: white;
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
	            <a href="Login.jsp">�α���</a><span></span>
	            <a href="Join.jsp">ȸ������</a><span></span>
            
            
            <%}else{ 
            	if(email.equals("admin")){%>
                <a href="LogoutServlet">�α׾ƿ�</a><span></span>
            	<a href="All_member.jsp">ȸ����ȸ</a><span></span>
            	<a href="Manager_perfume.jsp">�����ȸ</a><span></span>
      
           	<% }else{%>
            	<a href="LogoutServlet">�α׾ƿ�</a><span></span>
            	<a href="Main.jsp">ȸ������</a><span></span>
            
            <%} %>
            <%} %>
        </ul>
        <nav id= "dropdown">
        <%if(email == null){%>
            <a href="Gender.jsp">���������</a>
            <a href="select_layering.jsp">������̾</a>
            
            
            <%}else{%>
            <a href="Gender.jsp">���������</a>
            <a href="select_layering.jsp">������̾</a>
            <a href="favorite.jsp">���ã��</a>
            <a href="layering_favorite.jsp">���̾���ã��</a>
            
            <%}%>
      
        </nav>

    </header>

<fieldset>
			<legend><h1>ȸ������</h1></legend>
			<form action="Join" method="post">
				�̸���(ID)<br> <input type="email" name="email" ><br>
				<span>��й�ȣ                       ��й�ȣȮ��</span><br> <input type="password" name="pw" >
				<input type="password" name="confirm_pw" ><br>
				�������  <input type="date" name="birth" ><br>
				���� <input type="radio" name="gender" value="men">
					���� <input type="radio" name="gender" value="women"><br>			
				<input type="submit" value="ȸ������" class="button fit">
			</form>
		</ul>
</fieldset>
</body>
</html>