
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.fontsquirrel.com/fonts/gnu-free-font">
    <style>
        body {font-family: "FreeSans Regular";
            font-size:1.2em;}
    </style>
    <title>Movies</title>
</head>
<div style="background-color: #e7dfd5">
<!-- Navbar -->
<div class="w3-container" style="background-color: #204051; color:white;">
    <div class="w3-bar w3-card">
        <a href="index.php" class="w3-bar-item">
            <img src="download.png" alt="MovieLogo" class="w3-image">
        </a>
        <a href="index.php" class="w3-bar-item w3-button w3-padding w3-round-large" style="margin:8px;">Home</a>
        <a href="" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">Movies</a>
        <a href="#tvshows" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">TV Shows</a>
        <a href="#celebrities" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">Celebrities</a>
        <div class="w3-bar-item w3-padding">
            <input type="text" class="w3-bar-item w3-input w3-round-large" style="background-color: #e7dfd5; width:460px;" placeholder="Search for a movie or series...">
        </div>
        <a href="#signin" class="w3-bar-item w3-button w3-padding w3-hide-small w3-right w3-round-large" style="margin:8px;">Sign In</a>
        <div class="w3-dropdown-hover w3-hide-small w3-right">
            <button class="w3-padding w3-button w3-round-large" style="margin:8px;" title="More">"Username"<i class="fa fa-caret-down"></i></button>
            <div class="w3-dropdown-content w3-bar-block w3-card-4">
                <a href="#" class="w3-bar-item w3-button">Your movies</a>
                <a href="#" class="w3-bar-item w3-button">Favorites</a>
                <a href="#" class="w3-bar-item w3-button">Change password</a>
            </div>
        </div>
    </div>
</div>

<div class="w3-container">
    <h2>Movies</h2>

    <!-- Sidebar -->

    <div class="w3-sidebar w3-card" style="width:20%; height: 70%; background-color: #c8c2bb">
        <div class="w3-container">
            <!--sort by-->
            <div class="w3-dropdown-hover">
                <button class="w3-button" style = "background-color: #c8c2bb">Sort by</button>
                <div class="w3-dropdown-content w3-border">
                    <a href="#releaseasc" class="w3-bar-item w3-button">Release date ascending</a>
                    <a href="#releasedsc" class="w3-bar-item w3-button">Release date descending</a>
                    <a href="#rating" class="w3-bar-item w3-button">Rating</a>
                    <a href="#nameasc" class="w3-bar-item w3-button">Name ascending</a>
                    <a href="#namedsc" class="w3-bar-item w3-button">Name descending</a>
                </div>
            </div>
            <!-- genre-->
            <div class="w3-dropdown-hover">
                <button class="w3-button" style = "background-color: #c8c2bb">Genre</button>
                <div class="w3-dropdown-content w3-border">
                    <a href="#comedy" class="w3-bar-item w3-button">Comedy</a>
                    <a href="#action" class="w3-bar-item w3-button">Action</a>
                    <a href="#drama" class="w3-bar-item w3-button">Drama</a>
                    <a href="#musical" class="w3-bar-item w3-button">Musical</a>
                    <a href="#other" class="w3-bar-item w3-button">Other</a>
                    <a href="#romantic" class="w3-bar-item w3-button">Romantic</a>
                </div>
            </div>

            <div class="w3-padding">
                    <input type="text" class="w3-bar-item w3-input w3-round-large" style="background-color: #e7dfd5" placeholder="Search for a movie...">
                </div>
                <div class="w3-center">
                    <input type="button" class="w3-btn w3-blue"  value="Search!">
                </div>
        </div>
    </div>
</div>
<!-- lista filme -->
<div class="w3-container" style="margin-left:20%;">
<div class="w3-row" >
    <div class="w3-panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px; margin:30px;">
        <img src="poster.jpg" class="w3-round-small" alt="Movie 1" >
    </div>
    <div class="w3 panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px; margin:30px;">
        <img src="poster.jpg" class="w3-round-small" alt="Movie 2" >
    </div>
    <div class="w3-panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px; margin:30px;">
        <img src="poster.jpg" class="w3-round-small" alt="Movie 3" >
    </div>
    <div class="w3 panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px; margin:30px;">
        <img src="poster.jpg" class="w3-round-small" alt="Movie 4" >
    </div>

</div>

  <div class="w3-row" >
      <div class="w3-panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px">
          <img src="poster.jpg" class="w3-round-small" alt="Movie 1" >
      </div>
      <div class="w3 panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px">
          <img src="poster.jpg" class="w3-round-small" alt="Movie 2" >
      </div>
      <div class="w3-panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px">
          <img src="poster.jpg" class="w3-round-small" alt="Movie 3" >
      </div>
      <div class="w3 panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px">
        <img src="poster.jpg" class="w3-round-small" alt="Movie 4" >
      </div>
  </div>

  <div class="w3-row" >
      <div class="w3-panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px">
          <img src="poster.jpg" class="w3-round-small" alt="Movie 1" >
      </div>
      <div class="w3 panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px">
          <img src="poster.jpg" class="w3-round-small" alt="Movie 2" >
      </div>
      <div class="w3-panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px">
          <img src="poster.jpg" class="w3-round-small" alt="Movie 3" >
      </div>
      <div class="w3 panel w3-card w3-hover-shadow w3-cell" style="width: 100px; height: 130px">
        <img src="poster.jpg" class="w3-round-small" alt="Movie 4" >
      </div>
  </div>
</div>
</div>
</body>
</html>



















