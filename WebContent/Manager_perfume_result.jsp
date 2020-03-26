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
	width:100%;
	
	text-align: center;
	text-transform: capitalize;
	vertical-align: middle;
	text-overflow: inherit;
	letter-spacing: 0.1px;
	word-spacing: -2px;


}

td.img {
	text-transform: none;
}

div {
	
	margin-left: 30%;
}

input,select {
	
	display : inline-block;
	float :left;
	width : 100px;
	height : 40px;
	display: inline-block;
}
img{
width: 20px;
height:20px;
}

input[type=search]{

width : 20%;
}

input[type=submit].delete{
width:40px;
height: 25px;
}

input[type=button]{
float: right;

}
</style>

</head>
<body>

    <header id=main_header>

        <h1><a href="Main.jsp" lang="en"><em>Eau de parfum</em></a></h1>

        <ul>
                <a href="LogoutServlet">�α׾ƿ�</a><span></span>
            	<a href="All_member.jsp">ȸ����ȸ</a><span></span>
            	<a href="Manager_perfume.jsp">�����ȸ</a><span></span>
      
        </ul>
        
        </header>


	<%
		perfumeDAO dao = new perfumeDAO();
		session = request.getSession();
		ArrayList<perfumeVO> vo = (ArrayList<perfumeVO>) session.getAttribute("arr");
		
	%>
	<div>
		<form action="Manager_find" method="post" id="search_form">
			<select name="search_op" size="1">
				<option value="brand">�귣��</option>
				<option value="name">�̸�</option>
				<option value="accords">�迭</option>


			</select> <input type="search" name="search"> 
			<input type="submit" value="�˻�">
		<a href="insert_perfume.jsp"><input type="button" value="���"></a>
		</form>
		
		
	</div>
	<br><br>



	<table border="1">
		<tr>
			<th>�����ȣ</th>
			<th>�귣��</th>
			<th>�̸�</th>
			<th>����</th>
			<th>ž��Ʈ</th>
			<th>�̵��Ʈ</th>
			<th>���̽���Ʈ</th>
			<th>ž������</th>
			<th>������</th>
			<th>����</th>
			<th>�̹���</th>
			<th>�迭</th>
			<th>�迭�ѱ�</th>
			<th></th>

		</tr>

		<%
			for (int i = 0; i < vo.size(); i++) {
		%>

		<tr>
			<td><form action="Manager_find_pernum" method="post">
				<input type="submit" name= "perfume_num" value = "<%=vo.get(i).getPerfume_num()%>">
			
			</form></td>
			<td><%=vo.get(i).getBrand()%></td>
			<td><%=vo.get(i).getName()%></td>
			<td><%=vo.get(i).getGender()%></td>
			<td><%=vo.get(i).getTop()%></td>
			<td><%=vo.get(i).getMiddle()%></td>
			<td><%=vo.get(i).getBase()%></td>
			<td><%=vo.get(i).getTop_main()%></td>
			<td><%=vo.get(i).getMain()%></td>
			<td><%=vo.get(i).getSeason()%></td>
			<td class="img"><a href="<%=vo.get(i).getImg()%>"><img src="./images/������.png"></a></td>
			<td><%=vo.get(i).getAccords()%></td>
			<td><%=vo.get(i).getKorean()%></td>
			<form action="Manager_delete" method="post">
			<td><input type="submit" class = "delete" name="perfume_num" value="����">
				<input type="hidden" name="perfume_num" value="<%=vo.get(i).getPerfume_num()%>"> </td>
			</form>
		</tr>

		<%
			}
		%>
	</table>

</body>
</html>