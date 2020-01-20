<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
<title>Favorites Page</title>
</head>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="icon" href="images\logo.png" />
<body>
    <header> Movie Cruiser <img src="images\logo.png" hspace="10" height="40" width="40">
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorites" href="ShowFavorite">Favorites</a>
    </nav> </header>
    <h1>Favorites</h1>
    <c:if test="${removeFavoriteStatus==true }">
        <p id="remove-to-favorite">Movies removed from Favorite Successfully</p>
    </c:if>
    <c:set var="favorite" value="${favorite}">
    </c:set>
    <table id="favorites-page">
        <col width="200px" />
        <col width="150px" />
        <col width="150px" />
        <tr>
            <th align="left">Title</th>
            <th align="right">Box Office</th>
            <th align="center">Genre</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle() }</td>
                <td align="right"><f:formatNumber type="currency"  groupingUsed="true"
                        minFractionDigits="0"
                        value="${movie.getBoxOffice()}"></f:formatNumber></td>
                        <td align="center">${movie.getGenre() }</td>
                <td align="center"><a href="RemoveFavorite?movieId=${movie.getMovieId()}"
                    id="favorites-link">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>


            <td><b>No.of Favorites:</b>${favorite.getNoOfFavorites()}</td>
        </tr>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>