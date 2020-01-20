<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
<title>Movie List Customer Page</title>
</head>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="icon" href="images\logo.png" />
<body>
    <header> Movies Cruiser<img src="images\logo.png" hspace="10" height="40" width="40">
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorites" href="ShowFavorite">Favorites</a>
    </nav> </header>
    <h1>Movies</h1>
    <table id="movie">
        <c:if test="${addFavoriteStatus==true }">
            <p id="add-to-favorite">Item Added To Favorite Successfully</p>
        </c:if>
        <col width="160px" />
        <tr>
            <th align="left">Title</th>
            <th align="right">Box Office</th>
            <th align="center">Genre</th>
            <th>Has Teaser</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="right"><f:formatNumber type="currency" groupingUsed="true"
                        minFractionDigits="0" value="${movie. getBoxOffice()}"></f:formatNumber></td>
                <td align="center">${movie.getGenre()}</td>
                <td align="center"><a href="AddToFavorite?movieId=${movie.getMovieId()}"
                    id="favorites-link">Add To Favorite</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>