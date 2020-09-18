<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BithDaysDiary</title>
    <link type="text/css" rel="stylesheet" href="./css/style1.css">
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<%-- <style type="text/css">
<%@include file="style.css" %>
<%@include file="blog.css" %>
</style> --%>
</head>
<body>
 <nav>
        <img src="${pageContext.request.contextPath}/assets/logo.png" alt="logo" />
        <ul>
           		 <li> <a href="${pageContext.request.contextPath}/allblogs" class="navlab">Friends BirthDay</a></li>
             <li> <a href="${pageContext.request.contextPath}/login" class="navlab">Login</a></li>
            <li> <a href="${pageContext.request.contextPath}/signup" class="navlab">Sign Up</a></li>
           
        </ul>
    </nav>
    <div class="body-div1">
        <div>Friends BirtDay List</div>
   <c:if test="${bloglist == null}">
  <a href="${pageContext.request.contextPath}/new"><button class="button" id="addBlog" ><i class="fas fa-plus-circle"></i>Add New Post</button></a>  
   </c:if>
    </div>
<!-- <div id="popup"> -->
<!-- Popup Div Starts Here -->
<div id="popupContact">
<a href="${pageContext.request.contextPath}/allblogs"><img id="close" src="./assets/close-button.svg"></a>
<img id="rect" src=./assets/rect.svg>
<h2>Your List</h2>
 

<!-- Contact Us Form -->
<%-- <form action="${pageContext.request.contextPath}/new" id="form" method="post" name="form"> --%>
 		<c:if test="${bloglist != null}">
            <form action="${pageContext.request.contextPath}/update" method="post">
        </c:if>
        <c:if test="${bloglist == null}">
            <form action="${pageContext.request.contextPath}/new" method="post">
        </c:if>
 		<c:if test="${bloglist != null}">
  		<input type="hidden" name="blogId" value="<c:out value='${bloglist.getBlogId()}' />" />
   		</c:if>  
					<c:if test="${bloglist != null}">
            			Edit List
            		</c:if>
						<c:if test="${bloglist == null}">
            			Add New List<br><br>
            		</c:if>
		Enter Friend Name<br>
		<input id="title" name="title" value="<c:out value='${bloglist.getBlogTitle()}'/>" placeholder="Your Friend Name" type="text"/>
		Enter DOB
		<input id="msg" name="message" value="<c:out value='${bloglist.getBlogDescription()}'/>" placeholder="BirthDay Date(DD/MM/YYYY)" type="text"></input>
		<button id="post" type="submit" >ADD</button>
	</form>
</div>
</body>
</html>