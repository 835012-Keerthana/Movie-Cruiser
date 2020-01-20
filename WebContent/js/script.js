function validateMovieForm() {
    var titleEdit = document.forms["movieForm"]["title"].value;
    if (titleEdit == "") {
        alert("Title is required");
        return false;
    } else if ((titleEdit.length < 2) || (titleEdit.length > 100)) {
        alert("Title should have 2 to 100 characters");
        return false;
    }
    var boxOfficeEdit = document.forms["movieForm"]["boxOffice"].value;
    if (boxOfficeEdit == "") {
        alert("Box Office is required");
        return false;
    } else if (isNaN(boxOfficeEdit)) {
        alert("Box Office has to be a number");
        return false;
    }
    var dateOflaunch = document.forms["movieForm"]["dateOfLaunch"].value;
    if (dateOflaunch == "") {
        alert("Date of Launch is required");
        return false;
    }
    var genreEdit = document.forms["movieForm"]["genre"].value;
    if (genreEdit == "") {
        alert("Select one genre");
        return false;
    }
}