<%@page import="comp.VO.memberVO"%>
<%@page import="comp.VO.perfumeVO"%>
<%@page import="java.util.ArrayList"%>
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
	background: url('./background_image/���ã��, ���â ȭ��(������).png') no-repeat center center fixed;
	background-size: cover;
	height: 100%;
	color : white;

}



img {
	width: 100px;
	height: 100px;
}

th{
border-bottom: 5px solid white;
}

th#blank{
border-bottom: 0px;
}

td {
	width: 300px;
	text-align: center;
}
</style>

</head>
<body>

	<%
		session = request.getSession();
		perfumeDAO dao = new perfumeDAO();
		String email = (String) session.getAttribute("email");
		ArrayList<perfumeVO> arr = dao.favorite_selectAll(email);
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
            	<a href="update.sjp">ȸ������</a><span></span>
            
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
	
	
	<center>
		<table>

			<tr>
				<th class="blank"></th>
				<th><h1>�귣��</h1></th>
				<th><h1>�̸�</h1></th>
				<th><h1>������</h1></th>
				<th class="blank"></th>
			</tr>
			<% for(int i=0; i < arr.size() ; i++){%>
			
			<tr>
				<td><img src='<%=arr.get(i).getImg()%>'></td>
				<td><%=arr.get(i).getBrand()%></td>
				<td><%=arr.get(i).getName()%></td>
				<td><%=arr.get(i).getAccords()%></td>
								
				<td>
				<form action="deleteFavorite" method="post">
				
				<input type="hidden" name="delete" value="<%=arr.get(i).getPerfume_num()%>">
				<input type="submit"  value="����">
				</form></td>
			</tr>
			
			<%} %>

		</table>
	</center>
</body>
</html>