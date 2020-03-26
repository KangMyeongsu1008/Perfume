<%@page import="comp.VO.favoritelistVO"%>
<%@page import="comp.VO.perfumeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="comp.DAO.perfumeDAO"%>
<%@page import="java.util.HashMap"%>
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

header>nav :visited, section :visited, header>nav :link{
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
	background: url('./background_image/���ã��, ���â ȭ��(������).png') no-repeat center center fixed;
	background-size: cover;
	height: 100%;

}






fieldset {
	float : left;
	display: inline-block;
	width: 300px;
	height: 500px;
	border-style: none;
	margin-left: 5%;
	margin-top: 5%;
	color:white;
}

.hvrbox, .hvrbox * {
	box-sizing: border-box;
}

.hvrbox {
	position: relative;
	display: inline-block;
	overflow: hidden;
	max-width: 100%;
	height: auto;
}

.hvrbox img  {
	max-width: 100%;
	width: 240px;
	height: 280px;
}


input[type=image]#heart, input[type=image]#empty{
	display: inline-block; 
	cursor: pointer; 
	background-size: cover;
	background-repeat: no-repeat;
	width: 30px;
	height: 30px;
	float: right;
}



.hvrbox .hvrbox-layer_bottom {
	display: block;
}

.hvrbox .hvrbox-layer_top {
	opacity: 0;
	position: absolute;
	top: 0;
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
}

.hvrbox:hover .hvrbox-layer_top, .hvrbox.active .hvrbox-layer_top {
	opacity: 1;
}

.hvrbox .hvrbox-text {
	font-size: 12px;
	display: inline-block;
	position: absolute;
	line-height: 24px;
}

p.high{
line-height: 25px;
}

div#block{

display: block;

}

form.all {
position :relative;
float: right;
top : 500px;
}

input[type=submit]{
display: none;

}

label {
margin-right : 30px;
color :white;
font-size: 40px;

}


</style>

</head>
<body>


	<%
		session = request.getSession();
		String email = (String) session.getAttribute("email");
		HashMap<Integer, ArrayList<perfumeVO>> hash3 = (HashMap) session.getAttribute("hash3");
		perfumeDAO dao = new perfumeDAO();
		ArrayList<favoritelistVO> vo = dao.favorite_select(email);
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


	<% for (int i = 0; i < hash3.size(); i++) {%>
		<div class="block">	<% int j = 0;
			while (j < hash3.get(i).size()) {%>
	<fieldset>
		<legend>
			<h3>ȸ���Ե��� ã�� <%=hash3.get(i).get(j).getKorean()%>���<br> Best <%=j+1 %> </h3>
		</legend>
		<p>�귣�� : <%=hash3.get(i).get(j).getBrand()%>  </p>
			<p class="high">�̸� : <%=hash3.get(i).get(j).getName()%><br>
			���� : <%=hash3.get(i).get(j).getGender()%><br></p>

		<div class="hvrbox">
			<img src='<%=hash3.get(i).get(j).getImg()%>' alt="�̹�������" class="hvrbox-layer_bottom">
				<div class="hvrbox-layer_top">
					<div class="hvrbox-text">
						<p>ž��Ʈ :
							<%=hash3.get(i).get(j).getTop()%><br> �̵��Ʈ :
							<%=hash3.get(i).get(j).getMiddle()%><br> ���̽���Ʈ :
							<%=hash3.get(i).get(j).getBase()%></p>
					</div>
				</div>
			</div>
			
		<%if(email != null){
			int k=0;
			boolean heart = false;
			while (k<vo.size()){
				if(hash3.get(i).get(j).getPerfume_num()==vo.get(k).getPerfume_num()){%>	
					<form action="Favorite_delete_resultT5" method="post">
						<a herf="#a" onclick="alert('���ã�⿡�� �����˴ϴ�.')"><input type="image" src="./images/heart.png" id="heart" name="perfume_num" alt="submit_button">
						<input type="hidden" name="perfume_num"  value="<%=hash3.get(i).get(j).getPerfume_num()%>"></a>
					</form>
				<%
					heart =true;}%>						
			<%k++;} 
			if(heart == false){%>
			
					<form action="Favorite_insert_resultT5" method="post">
						<a herf="#a" onclick="alert('���ã�⿡ �߰��˴ϴ�.')"><input type="image" src="./images/empty heart.png" id="empty" name="perfume_num" alt="submit_button">
						<input type="hidden" name="perfume_num"  value="<%=hash3.get(i).get(j).getPerfume_num()%>"></a>
					</form>
			<%} %>
		<%} %>
	</fieldset>


	<%j++;}%>
	</div>
	<%}%>
	
					<form action="Find_perfumeServlet" class="all" method="post">
						<input type="submit" id="all" value="��ü����"><label for="all">��ü����>></label>
					
					</form>

</body>
</html>