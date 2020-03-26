<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eau de parfum</title>
</head>
<style>
*{
	margin: 0;

}

a :lang(en){
	margin: 0px;
	font-family: serif;
}

a {
	text-decoration: none;
}

nav :visited, section :visited , nav :link{
	color: white;
}

nav :hover, ul:visited, ul :hover, section :hover {
	color: black;
}
		


header>nav :link, header>ul :link {
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
nav {
	text-align: center;
	background-color: dimgrey;
	vertical-align:middle;
	height: 40px;
}

nav>a {
	margin: 0px;
	padding-right: 150px;
	padding-left: 150px;
	font-size: 1.2em;
	padding-top: 5px;
	word-spacing: 100px;
}


    /* #dropdown{} */
/* <!--section --> */
    section {
       
        height: 900px;
        background-image: url('./background_image/����������(������).png');
        background-size: 100% 100%;
        text-align: center; 
 
       

    }

    section h1 {
        padding-top: 300px;
        
    }

    section h3 {
        text-align: right;
        padding-top: 300px;
        padding-right: 50px;       
        margin: 0px
    }
    

    
</style>
<!-- ���-->

<body>
	<%
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


    </header>

        <nav id= "dropdown">
        <%if(email == null){%>
            <a href="Gender.jsp">���������</a>
            <a href="select_layering.jsp">������̾</a>
            
            
            <%}else{
	            if(email.equals("admin")){%>
	            	<a href="All_member.jsp">ȸ����ȸ</a><span></span>
	            	<a href="Manager_perfume.jsp">�����ȸ</a><span></span>

            <% }else{%>
            
            		<a href="Gender.jsp">���������</a>
		            <a href="select_layering.jsp">������̾</a>
		            <a href="favorite.jsp">���ã��</a>
		            <a href="layering_favorite.jsp">���̾���ã��</a>
            <%}%>
      <%} %>
        </nav>


    <section>

       <h1 id=section_name><a href="Gender.jsp">����� ���� ã�Ƶ帳�ϴ�</a></h3>
            <h3 id=section_sub><a href="Gender.jsp">������ ��� ã���� ����>></a></h3>

    </section>
</body>

</html>