<%@page import="comp.VO.layeringlistVO"%>
<%@page import="comp.DAO.perfumeDAO"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Set"%>
<%@page import="comp.VO.perfumeVO"%>
<%@page import="java.util.ArrayList"%>
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
a :lang(en){
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
	background: url('./background_image/���ã��, ���â ȭ��(������).png') no-repeat center center fixed;
	background-size: cover;
	overflow :hidden;
	height: 100%;
	
	
}




fieldset{
position : relative;
display :inline-block;
width: 300px;
height: 100px;
border-style: none;
margin-top: 3%;
color : white;
}
#fd1{

margin-left: 33%;
}
#fd2{

margin-left:3%;
}


.hvrbox,
.hvrbox * {
	box-sizing: border-box;
}
.hvrbox {
	position: relative;
	display: inline-block;
	overflow: hidden;
	max-width: 100%;
	height: auto;
}
.hvrbox img {
	max-width: 100%;	
	width: 240px;
	height: 280px;

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

.hvrbox:hover .hvrbox-layer_top,
.hvrbox.active .hvrbox-layer_top {
	opacity: 1;
}

.hvrbox .hvrbox-text {
	float : left;
	font-size: 12px;
	display: inline-block;
	position: absolute;
	line-height: 24px;

}
form#refresh{
	margin-bottom: 30%;
}

form#heart{
top : 50px;
	width : 50px;
}
center{
	margin-bottom: 50%;
	margin-right: 2%;
}


input[type=image]{
	display: inline-block; 
	cursor: pointer; 
	background-size: cover;
	background-repeat: no-repeat;
	width: 40px;
	height: 40px;
		
}

input[type=submit]{
	display: none;
}

input[type=submit]+label{
	color:white;
	font-size: 20px;
	cursor: pointer;
}	


div > div > div > p{
	margin: 0;
	float: left;
}

body > h1{
	color :white;
	margin-top : 3%;
	text-align: center;
}

</style>
</head>
<body>


<%
	session = request.getSession();
	HashMap<Integer, ArrayList<perfumeVO>> hash2 = (HashMap) session.getAttribute("hash2");
	String email = (String) session.getAttribute("email");
	String kor_accord = (String) session.getAttribute("kor_accord");
	perfumeDAO dao = new perfumeDAO();
	ArrayList<layeringlistVO> vo = dao.layering_selectAll(email);
	
	Random rd = new Random();
	int j = rd.nextInt(hash2.get(0).size());
	int k = rd.nextInt(hash2.get(1).size());
	if(j==k){
		
		k+= 1;
	}if(k>hash2.get(1).size()){
		k=0;
		
	}

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

	<h1>#<%=kor_accord+" "%>�����⸦ �����ϰ� ���� ��ſ��� ��õ�ϴ� ����!</h1>
		<fieldset id="fd1">
				<p> �귣�� : <%=hash2.get(0).get(j).getBrand() %> </p>			 
				<p>�̸� : <%=hash2.get(0).get(j).getName() %></p>
				<p>���� : <%=hash2.get(0).get(j).getGender() %></p>
				<p>������ : <%=hash2.get(0).get(j).getKorean() %></p>
				
				<div class="hvrbox">
				<img src ='<%=hash2.get(0).get(j).getImg() %>' alt="�̹�������" class="hvrbox-layer_bottom">
				<div class="hvrbox-layer_top">
					<div class="hvrbox-text">				
					<p>
						ž��Ʈ : <%=hash2.get(0).get(j).getTop() %><br>	
						�̵��Ʈ : <%=hash2.get(0).get(j).getMiddle() %><br>
						���̽���Ʈ : <%=hash2.get(0).get(j).getBase() %></p></div>
					</div>
				</div>


		</fieldset>
		
				<fieldset id="fd2">
			<p>�귣�� :  <%=hash2.get(1).get(k).getBrand() %> </p>
			 
				<p>�̸� : <%=hash2.get(1).get(k).getName() %></p>
				<p>���� : <%=hash2.get(1).get(k).getGender() %></p>
				<p>������ : <%=hash2.get(1).get(k).getKorean() %></p>
				
				<div class="hvrbox">
				<img src ='<%=hash2.get(1).get(k).getImg() %>' alt="�̹�������" class="hvrbox-layer_bottom">
				<div class="hvrbox-layer_top">
					<div class="hvrbox-text">				
					<p> 
						ž��Ʈ : <%=hash2.get(1).get(k).getTop() %><br>	
						�̵��Ʈ : <%=hash2.get(1).get(k).getMiddle() %><br>
						���̽���Ʈ : <%=hash2.get(1).get(k).getBase() %></p></div>
						

					</div>
				</div>
		</fieldset>
		<br>

	<center>
				
			<%if (email != null) {
					int l=0;
					boolean heart = false;
					while (l<vo.size()){
						if((hash2.get(0).get(j).getPerfume_num()==vo.get(l).getPerfume_num1() &&hash2.get(1).get(k).getPerfume_num()==vo.get(l).getPerfume_num2())||(hash2.get(0).get(j).getPerfume_num()==vo.get(l).getPerfume_num2() &&hash2.get(1).get(k).getPerfume_num()==vo.get(l).getPerfume_num1())){%>
							<form action="Favorite_layering_delete" id="heart" method="post">
								<a href="#a" onclick ="alert('���̾���ã�⿡�� �����Ǿ����ϴ�.')"> <input type="image" src="./images/heart.png" alt="submit_button"></a>
									<input type="hidden" name="layering" value="<%=hash2.get(0).get(j).getPerfume_num()%>"> 
									<input type="hidden" name="layering" value="<%=hash2.get(1).get(k).getPerfume_num()%>">
										<%heart =true;}%>						
			<%l++;} 
			if(heart == false){%>
							<form action="Favorite_layering_insert" id="heart" method="post">
								<a href="#a" onclick ="alert('���̾���ã�⿡ �߰��Ǿ����ϴ�.')"> <input type="image" src="./images/empty heart.png" alt="submit_button"></a>
									<input type="hidden" name="layering" value="<%=hash2.get(0).get(j).getPerfume_num()%>"> 
									<input type="hidden" name="layering" value="<%=hash2.get(1).get(k).getPerfume_num()%>">
			
			
		</form>
		<br>
				<form action="perfumeLayering_refresh" id="refresh" method="post">
			<input type="submit" id="another" value="�ٸ����պ���"><label for="another">�ٸ����պ���>></label>
		</form>
		<%} %>
<%} %>
	</center>

</body>
</html>