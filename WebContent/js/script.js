function valid() {
    var titleEdit = document.forms["edit-movie"]["title"].value;
    if (titleEdit == "") {
        alert("Title is required");
        return false;
    } else if ((titleEdit.length < 2) || (titleEdit.length > 100)) {
        alert("Title should have 2 to 100 characters");
        return false;
    }
    var boxOfficeEdit = document.forms["edit-movie"]["boxOffice"].value;
    if (boxOfficeEdit == "") {
        alert("Box Office is required");
        return false;
    } else if (isNaN(boxOfficeEdit)) {
        alert("Box Office has to be a number");
        return false;
    }
    var dateOflaunch = document.forms["edit-movie"]["dateOfLaunch"].value;
    if (dateOflaunch == "") {
        alert("Date of Launch is required");
        return false;
    }
    var genreEdit = document.forms["edit-movie"]["genre"].value;
    if (genreEdit == "") {
        alert("Select one genre");
        return false;
    }

}