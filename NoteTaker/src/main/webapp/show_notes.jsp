<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.Helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.NoteTaker.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Show notes</title>
</head>
<body>
<div class="container-fluid">
<%@ include file="NavBar.jsp" %>
</div>
<div class="container">
<%
	Session s =FactoryProvider.getSessionFactory().openSession();
Query q1= s.createQuery("from Note");
List<Note> list = q1.list();
for(Note list1 : list){
	out.println("<div class=\"card mb-3 container-fluid\" style=\"max-width:700px\"> <div class=\"row g-0\"> <div class=\"col-md-4\"> <img src=\"img.png\" class=\"img-fluid rounded-start\" alt=\"Image Not Found\"> </div> <div class=\"col-md-8\"> <div class=\"card-body\"> <h5 class=\"card-title\" style=\"display:inline\">Title =<h3 style=\"display: inline-block;\">"+list1.getTitle()+"</h3></h5> <p class=\"card-text\">"+list1.getContent()+"<p class=\"card-text mb-5\"><small class=\"text-muted mb-5\">Time: "+new Date().toString()+"</small></p> </div> </div> </div> </div>");
	}
s.close();
				%>
				</div>
</body>
</html>