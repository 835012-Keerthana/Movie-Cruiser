<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Movie List Admin Page</title>
</head>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="icon" href="images\logo.png" />
<body>
    <header> Movie Cruiser <img src="images\logo.png" hspace="10" height="40" width="40"></img>
    <nav> <a href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <h1>Movies</h1>
    <table id="movie">
        <col width="170px" />
        <tr>
            <th align="left">Title</th>
            <th align="right">Box Office</th>
            <th align="center">Active</th>
            <th align="center">Date of Launch</th>
            <th align="center">Genre</th>
            <th align="center">Has Teaser</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td align="right"><f:formatNumber type="currency" groupingUsed="true"
                        minFractionDigits="0" value="${movie.getBoxOffice()}"></f:formatNumber></td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><f:formatDate value="${movie.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy"></f:formatDate></td>
                <td align="center">${movie.getGenre() }</td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><a href="ShowEditMovie?movieId=${movie.getMovieId() }"
                    id="favorites-link">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>