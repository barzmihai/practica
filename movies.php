<head>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.fontsquirrel.com/fonts/gnu-free-font">
    <style>
        body {font-family: "FreeSans Regular";
            font-size:1.2em;}
        .pagination {
            display: inline-block;
        }

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
        }

        .pagination a.active {
            background-color: #204051;
            color: white;
        }

        .center {
            text-align: center;
        }

        .pagination a:hover:not(.active) {background-color: #ddd;}

        .item1 {
            grid-row: 1 / 4;
        }
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

    <div class="w3-container w3-sidebar" style = "background-color: #c8c2bb; width: 20%">
        <h2>Movies</h2>
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
        <br>
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
        <br>
        <div class="w3-dropdown-hover">
            <button class="w3-button" style = "background-color: #c8c2bb">Year</button>
            <div class="w3-dropdown-content w3-border">
                <a href="#2020" class="w3-bar-item w3-button">2020</a>
                <a href="#2019" class="w3-bar-item w3-button">2019</a>
                <a href="#2018" class="w3-bar-item w3-button">2018</a>
                <a href="#2017" class="w3-bar-item w3-button">2017</a>
                <a href="#2016" class="w3-bar-item w3-button">2016</a>
                <a href="#2015" class="w3-bar-item w3-button">2015</a>
                <a href="#2014" class="w3-bar-item w3-button">2014</a>
                <a href="#2013" class="w3-bar-item w3-button">2013</a>
                <a href="#2012" class="w3-bar-item w3-button">2012</a>
                <a href="#2011" class="w3-bar-item w3-button">2011</a>
                <a href="#2010" class="w3-bar-item w3-button">2010</a>
                <a href="#2009" class="w3-bar-item w3-button">2009</a>
                <a href="#2008" class="w3-bar-item w3-button">2008</a>
                <a href="#2007" class="w3-bar-item w3-button">2007</a>
                <a href="#2006" class="w3-bar-item w3-button">2006</a>
                <a href="#2005" class="w3-bar-item w3-button">2005</a>
                <a href="#2004" class="w3-bar-item w3-button">2004</a>
                <a href="#2003" class="w3-bar-item w3-button">2003</a>
                <a href="#2002" class="w3-bar-item w3-button">2002</a>
                <a href="#2001" class="w3-bar-item w3-button">2001</a>
                <a href="#2000" class="w3-bar-item w3-button">2000</a>
            </div>
        </div>
    </div>


    <!-- lista filme -->

<div class="w3-container" style = "margin-left:20%; background-color:#e7dfd5">

   <div class="w3-row">

       <div class="w3-col m1 w3-center">
           <div class="w3-panel w3-card w3-hover-shadow w3-cell" >
               <img src="poster.jpg" alt="Movie 1" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px; width:200px;height:266px;">
               Movie 1
           </div>
       </div>
       <div class="w3-col m1 w3-center">
           <div class="w3-panel w3-card w3-hover-shadow w3-cell" >
               <img src="poster.jpg" alt="Movie 2" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;width:200px;height:266px;">
               Movie 2
           </div>
       </div>
       <div class="w3-col m1 w3-center">
           <div class="w3-panel w3-card w3-hover-shadow w3-cell" >
               <img src="poster.jpg" alt="Movie 3" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;width:200px;height:266px;">
               Movie 3
           </div>
       </div>
       <div class="w3-col m1 w3-center">
           <div class="w3-panel w3-card w3-hover-shadow w3-cell" >
               <img src="poster.jpg" alt="Movie 4" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;width:200px;height:266px;">
               Movie 4
           </div>
       </div>
   </div>

    <div class="center">
        <div class="pagination" >
            <a href="#">&laquo;</a>
            <a class="active" href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">&raquo;</a>
        </div>
    </div>
</div>
</div>
</body>
</html>



















