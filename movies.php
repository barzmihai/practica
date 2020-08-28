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
    <div class="w3-container" style="background-color: #204051; color:white;padding:0px;">
        <div class="w3-bar w3-card">
            <a href="#" class="w3-bar-item">
                <img src="download.png" alt="MovieLogo" class="w3-image">
            </a>
            <a href="#" class="w3-bar-item w3-button w3-padding w3-round-large" style="margin:8px;">Featured</a>
            <a href="#movies" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">Movies</a>
            <a href="#tvshows" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">TV Shows</a>
            <a href="#celebrities" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">Celebrities</a>
            <div class="w3-bar-item w3-padding w3-hide-small">
                <input type="text" class="w3-bar-item w3-input w3-round-large" style="background-color: #e7dfd5; width:460px;" placeholder="Search for a movie or series...">
            </div>
            <button class="w3-bar-item w3-button w3-padding w3-hide-small w3-right w3-round-large" style="margin:8px;" onclick="showForm()">Sign In</button>
            <div class="w3-dropdown-hover w3-hide-small w3-right">
                <button class="w3-padding w3-button w3-round-large" style="margin:8px;" title="More"><i class="fa fa-caret-down"></i></button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Your movies</a>
                    <a href="#" class="w3-bar-item w3-button">Favorites</a>
                    <a href="#" class="w3-bar-item w3-button">Change password</a>
                    <a href="logout.jsp" class="w3-bar-item w3-button">Logout</a>
                </div>
            </div>
        </div>
    </div>


    <div class="w3-container w3-sidebar" style = "background-color: #c8c2bb; width: 20%">
        <h2>Movies</h2>
        <!--sort by-->
        <div class="w3-dropdown-hover">
            <input type="hidden" name="pageNum" value="<?php
            print("1");
            ?>">
            <input type="hidden" name="sortOrd" value="<?php
            $psortOrd = 1;
            print("$psortOrd");
            ?>">
            <button class="w3-button" style = "background-color: #c8c2bb">Sort by</button>
            <div class="w3-dropdown-content w3-border">
                <a href="movies.php?sortOrd=1" class="w3-bar-item w3-button">Release date ascending</a>
                <a href="movies.php?sortOrd=2" class="w3-bar-item w3-button">Release date descending</a>
                <a href="movies.php?sortOrd=3" class="w3-bar-item w3-button">Name ascending</a>
                <a href="movies.php?sortOrd=4" class="w3-bar-item w3-button">Name descending</a>
            </div>
        </div>
        <br>
        <!-- genre-->
        <div class="w3-dropdown-hover">
            <button class="w3-button" style = "background-color: #c8c2bb">Genre</button>
            <div class="w3-dropdown-content w3-border">
                <a href="movies.php?genre=comedy" class="w3-bar-item w3-button">Comedy</a>
                <a href="movies.php?genre=action" class="w3-bar-item w3-button">Action</a>
                <a href="movies.php?genre=drama" class="w3-bar-item w3-button">Drama</a>
                <a href="movies.php?genre=musical" class="w3-bar-item w3-button">Musical</a>
                <a href="movies.php?genre=other" class="w3-bar-item w3-button">Other</a>
                <a href="movies.php?genre=romantic" class="w3-bar-item w3-button">Romantic</a>
            </div>
        </div>
        <br>
        <div class="w3-dropdown-hover">
            <button class="w3-button" style = "background-color: #c8c2bb">Year</button>
            <div class="w3-dropdown-content w3-border">
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
    <?php

    // **************************************************
    function paint($pdbConn, $pageNumb, $sortOrd, $pitemPerPage, $result)
    {

    ?>

<div class="w3-container" style = "margin-left:20%; background-color:#e7dfd5">

    <div class="w3-row">
        <?php
        while ($row = mysqli_fetch_assoc($result)){
            echo '
        <div class="w3-col w3-center w3-padding"  style="width: 25%; height: 60% ">
            <a href="movie.php?ID=' . $row['FilmID'] . '" class="w3-panel w3-card w3-hover-shadow w3-cell" >
                <img src="posters/' . rawurldecode($row['FilmName']) . '.jpg" alt="' . rawurldecode($row['FilmName']) . '" class="thumbnail-image w3-image w3-round">' .
                    $row['FilmName'] .


          '  </a>
        </div>';
        }?>
    </div>

    <?php
        }

        // **************************************************
        // main page here:
        include "dbconnection.php";
        $dbConn = openCon();

        global $itemPerPage;
        $itemPerPage = 12;

        $sql = "SELECT * FROM film";
        $result = mysqli_query($dbConn,$sql);
        $nr_of_results = mysqli_num_rows($result);
        $nr_of_pages =ceil($nr_of_results / $itemPerPage);

        if (!isset($_GET['page'])){
            $page = 1;
        } else {
            $page = $_GET['page'];
        }

        if (!isset($_GET['sortOrd'])){
            $sortOrd = 7;
        } else {
            $sortOrd = $_GET['sortOrd'];
        }

        if (!isset($_GET['genre'])){
            $genre = 'ALL';
        } else {
            $genre = $_GET['genre'];
        }

       $this_page_first_result = ($page - 1) * $itemPerPage;

    $sql = "SELECT * FROM film LIMIT " . $this_page_first_result . ',' . $itemPerPage;
    $result = mysqli_query($dbConn, $sql);

        if ($sortOrd == 1){
            $sql = "SELECT * FROM film ORDER BY FilmReleaseDate ASC LIMIT " . $this_page_first_result . ',' . $itemPerPage;
            $result = mysqli_query($dbConn, $sql);
        } else if ($sortOrd == 2){
            $sql = "SELECT * FROM film ORDER BY FilmReleaseDate DSC LIMIT " . $this_page_first_result . ',' . $itemPerPage;
            $result = mysqli_query($dbConn, $sql);
        } else if ($sortOrd == 3){
            $sql = "SELECT * FROM film ORDER BY FilmName ASC LIMIT " . $this_page_first_result . ',' . $itemPerPage;
            $result = mysqli_query($dbConn, $sql);
        } else if ($sortOrd == 4){
            $sql = "SELECT * FROM film ORDER BY FilmName DSC LIMIT " . $this_page_first_result . ',' . $itemPerPage;
            $result = mysqli_query($dbConn, $sql);
        }

        paint($dbConn, $page, $sortOrd, $itemPerPage, $result);

    for ($page = 1; $page<=$nr_of_pages; $page++){
        echo '<a href="movies.php?page=' . $page . '">' . $page . '&nbsp&nbsp</a>';
    }
    ?>
</div>
</div>
</body>
</html>



















