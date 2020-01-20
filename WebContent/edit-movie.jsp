<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
<title>Edit Movie Page</title>
<script type="text/javascript" src="js/script.js">
    
</script>
</head>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="icon" href="images\logo.png" />
<body>
    <header> Movie Cruiser <img src="images\logo.png" hspace="10" height="40" width="40">
    <nav> <a href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <h1>Edit Movie</h1>

    <form name="movieForm" action="EditMovie" autocomplete="off"
        onsubmit="return validateMovieForm()" method="post">
        <input type="hidden" name="movieId" value="${movie.getMovieId()}" />
        <table id="edit-movie">
            <tr>
                <td><label for="title"><b>Title</b></label></td>
            </tr>
            <tr>
                <td><input type="text" id="title" name="title" value="${movie.getTitle()}"
                    size="74" /></td>
            </tr>
        </table>
        <table id="edit-movie2">
            <tr>
                <td><label for="boxOffice"><b>Gross ($)</b></label></td>
                <td><label for="active"><b>Active</b></label></td>
                <td><label for="dateOfLaunch"><b>Date of Launch</b></label></td>
                <td><label for="genre"><b>Genre</b></label></td>
            </tr>
            <tr>
                <td><input type="text" id="boxOffice" name="boxOffice"
                    value="${movie.getBoxOffice()}"></td>
                <td><c:choose>
                        <c:when test="${movie.isActive()==true}">
                            <input type="radio" value="Yes" name="active" checked="checked" />Yes
                            <input type="radio" value="No" name="active" />No
                        </c:when>
                        <c:otherwise>
                            <input type="radio" value="Yes" name="active" />Yes
                            <input type="radio" value="No" name="active" checked="checked" />   No
                        </c:otherwise>
                    </c:choose></td>
                <td><f:formatDate value="${movie.getDateOfLaunch()}" var="dateOfLaunch"
                        pattern="dd/MM/yyyy"></f:formatDate> <input type="textbox" id="dateOfLaunch"
                    value="${dateOfLaunch}" name="dateOfLaunch" /></td>
                <td><select name="genre" id="genre">
                        <option value="${movie.getGenre()}">${movie.getGenre()}</option>
                        <option value="sciencefiction" id="genre">Science Fiction</option>
                        <option value="superhero" id="genre">Superhero</option>
                        <option value="romance" id="genre">Romance</option>
                        <option value="comedy" id="genre">Comedy</option>
                        <option value="comedy" id="genre">Adventure</option>
                        <option value="comedy" id="genre">Thriller</option>
                </select></td>
            </tr>
            <tr>
                <td><c:choose>
                        <c:when test="${movie. isHasTeaser()==true}">
                            <input type="checkbox" value="Yes" name="hasTeaser" checked="checked" />
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" value="No" name="hasTeaser" />

                        </c:otherwise>
                    </c:choose> <label for="hasTeaser"><b>Has Teaser</b></label></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save" id="button1" /></td>
            </tr>
        </table>
    </form>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>