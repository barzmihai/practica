<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.fontsquirrel.com/fonts/gnu-free-font">
    <style>
        body {font-family: "FreeSans Regular";
            font-size:1.2em;}
    </style>
    <title>Film</title>
</head>
<body style="background-color: #c8c2bb">
<div class="w3-container" style="background-color: #204051; color:white;padding:0px;">
    <div class="w3-bar w3-card">
        <a href="#" class="w3-bar-item">
            <img src="download.png" alt="MovieLogo" class="w3-image">
        </a>
        <a href="#" class="w3-bar-item w3-button w3-padding w3-round-large" style="margin:8px;">Featured</a>
        <a href="/movies/practica/movies.php" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">Movies</a>
        <a href="#tvshows" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">TV Shows</a>
        <a href="#celebrities" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">Celebrities</a>
        <div class="w3-bar-item w3-padding w3-hide-small">
            <input type="text" class="w3-bar-item w3-input w3-round-large" style="background-color: #e7dfd5; width:460px;" placeholder="Search for a movie or series...">
        </div>
        <a href="#signin" class="w3-bar-item w3-button w3-padding w3-hide-small w3-right w3-round-large" style="margin:8px;">Sign In</a>
        <!--<div class="w3-dropdown-hover w3-hide-small w3-right">
            <button class="w3-padding w3-button w3-round-large" style="margin:8px;" title="More">"Username"<i class="fa fa-caret-down"></i></button>
            <div class="w3-dropdown-content w3-bar-block w3-card-4">
                <a href="#" class="w3-bar-item w3-button">Your movies</a>
                <a href="#" class="w3-bar-item w3-button">Favorites</a>
                <a href="#" class="w3-bar-item w3-button">Change password</a>
            </div>
        </div>-->
    </div>
</div>

<?php
include "dbconnection.php";
$dbConn = openCon();

if (!isset($_GET['ID'])){
    $ID = 1;
} else {
    $ID = $_GET['ID'];
}

$sql = "SELECT * FROM film WHERE Film.FilmID = $ID ";
$result = mysqli_query($dbConn,$sql);
$row = mysqli_fetch_assoc($result);
echo '

<div class="w3-container">
    <div class="w3-row-padding">
        <div class="w3-col l2" style="width:30%">
            <img src="posters/' . rawurldecode($row['FilmName']) . '.jpg" class="w3-image w3-round" style=" margin:12px;">

        </div>

        <div class="w3-col" style="width: 60%; background-color: #e7dfd5; margin: 5px">

            <h1>' . rawurldecode($row['FilmName']) . '</h1>
            <h>' . rawurldecode($row['FilmReleaseDate']) . ' &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Directed by: Steven Spielberg   </h><br>
            <h>United States &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Studio: 20th Century Fox   </h><br>
            <h4>Synopsis</h4>
            <h>' . rawurldecode($row['FilmSynopsis']) . '</h><br><br><br>
            <h3>' . rawurldecode($row['FilmRunTimeMinutes']) . ' min &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Certificate: PG</h3>
        </div>

    </div>
</div>';
?>
</body>
</html>