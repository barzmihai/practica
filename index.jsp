<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.fontsquirrel.com/fonts/gnu-free-font">
        <link rel="stylesheet" href="styles.css">
        <style>
            body {font-family: "FreeSans Regular";
                font-size:1.2em;}
            .movie-thumbnail, .movie-thumbnail-alt{
                min-height:390px;
                min-width:216px;
                max-width:216px;
                max-height:390px;
                padding-bottom:12px;
                margin-left:8px;
                margin-right:8px;
                position:relative;
                overflow:hidden;
            }
            .movie-thumbnail,.series-thumbnail{
                background-color: #998e89;
            }
            .movie-thumbnail-alt,.series-thumbnail-alt{
                background-color:#204051;
                color:whitesmoke;
            }
            .series-thumbnail, .series-thumbnail-alt{
                min-height:515px;
                min-width:320px;
                max-width:320px;
                max-height:515px;
                padding-bottom:12px;
                margin-left:25px;
                margin-right:25px;
                position:relative;
                overflow:hidden;
            }
            .thumbnail-image{
                cursor:pointer;
                -webkit-transition: opacity 0.33s ease-in-out;
                -moz-transition: opacity 0.33s ease-in-out;
                -ms-transition: opacity 0.33s ease-in-out;
                -o-transition: opacity 0.33s ease-in-out;
                transition: opacity 0.33s ease-in-out;
                opacity: 1;
            }
            .thumbnail-image:hover{
                opacity: 0.8;
            }
            
            .slideshow-btn,.slideshow-btn-alt{
                -webkit-transition: background-color 0.1s linear;
                -moz-transition: background-color 0.1s linear;
                -ms-transition: background-color 0.1s linear;
                -o-transition: background-color 0.1s linear;
                transition: background-color 0.1s linear;
                min-height:100px;
                width: 55px;
                border-width:0px;
                background-color: transparent;
            }
            .slideshow-btn-alt{
                color:white;
            }
            .slideshow-btn:hover{
                background-color: #204051;
                color:#e7dfd5;
            }
            .slideshow-btn-alt:hover{
                background-color: #e7dfd5;
                color:black;
            }
            .section-heading{
                font-family:"FreeSans Regular";
                font-weight:bold;
                font-size:1.2em;
                padding-left:40px;
            }
            .actor-thumbnail{
                min-height:300px;
                max-height:300px;
                min-width:250px;
                max-width:250px;
            }
            
            .signin-form{
            	display: none; /* Hidden by default */
			    position: fixed; /* Stay in place */
			    z-index: 1000; /* Sit on top */
			    padding: 20px; /* Location of the box */
			    left: 0;
			    top: 0;
			    width: 100%; /* Full width */
			    height: 100%; /* Full height */
			    overflow: auto; /* Enable scroll if needed */
			    background-color: rgb(0,0,0); /* Fallback color */
			    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
            }
            .close {
              position: absolute;
			  top: 15px;
			  right: 35px;
			  color: #f1f1f1;
			  font-size: 40px;
			  font-weight: bold;
			  transition: 0.3s;
			}
			.close:hover,
			.close:focus {
			  color: #bbb;
			  text-decoration: none;
			  cursor: pointer;
			}
			.close-form:hover,
			.close-form:focus {
			  color: #bbb;
			  text-decoration: none;
			  cursor: pointer;
			}
            
            .signin{
              background-color:#e7dfd5; 
              position:absolute;
              width:30%; 
              left:35%;
              top:25%;
			  -webkit-animation-name: zoom;
			  -webkit-animation-duration: 0.6s;
			  animation-name: zoom;
			  animation-duration: 0.6s;
  			}
  			
		    #recentmovies, #recentseries, #recentmoviesalt, #recentseriesalt{
			opacity:1;
	    		-webkit-transition: all 0.25s ease-in-out;
	    		-moz-transition: all 0.25s ease-in-out;
	    		-ms-transition: all 0.25s ease-in-out;
	    		-o-transition: all 0.25s ease-in-out;
	    		transition: all 0.25s ease-in-out;
		    }
  			
  			@-webkit-keyframes zoom {
			  from {-webkit-transform:scale(0)} 
			  to {-webkit-transform:scale(1)}
			}
			
			@keyframes zoom {
			  from {transform:scale(0)} 
			  to {transform:scale(1)}
			}
        </style>
    </head>
    <body style="background-color: #e7dfd5;">
    <div class="signin-form" id="signInForm">
  			<span class="close" onclick="closeForm()">&times;</span>
  			<div class="signin w3-card-4 w3-round-large w3-border w3-padding "> 
  				<div class="w3-center" style="background-color:#204051;color:white;margin-bottom:25px;font-size:1.2em;">
  					Sign In
  				</div>
  				<form action="validate.jsp" method="POST">
  					<label style="color:#204051;font-weight:bold;">Username</label>
  					<input class="w3-input" type = "text" name = "username">
  					<br>
  					<label style="color:#204051;font-weight:bold;">Password</label>
  					<input class="w3-input" type = "password" name = "password">
  					<br>
  					<div class="w3-center">
  						<input type = "submit" value = "Enter" class="w3-btn" style="background-color:#204051;color:white;"/>
  					</div>
  				</form>
  			</div> 
	</div>
    <!-- Navbar -->
        <div class="w3-container" style="background-color: #204051; color:white;padding:0px;">
            <div class="w3-bar w3-card">
            <a href="#" class="w3-bar-item">
                <img src="download.png" alt="MovieLogo" class="w3-image">
            </a>
            <a href="#" class="w3-bar-item w3-button w3-padding w3-round-large" style="margin:8px;">Featured</a>
            <a href="#movies" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">Movies</a>
            <a href="#tvshows" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">TV Shows</a>
            <a href="celebrities.jsp" class="w3-bar-item w3-button w3-padding w3-hide-small w3-round-large" style="margin:8px;">Celebrities</a>
            <div class="w3-bar-item w3-padding w3-hide-small">
                <input type="text" class="w3-bar-item w3-input w3-round-large" style="background-color: #e7dfd5; width:460px;" placeholder="Search for a movie or series...">
            </div>
            <%if(session.getAttribute("user")==null){%>
            	<button class="w3-bar-item w3-button w3-padding w3-hide-small w3-right w3-round-large" style="margin:8px;" onclick="showForm()">Sign In</button>
            <%} else{ %>
	            <div class="w3-dropdown-hover w3-hide-small w3-right">
	                <button class="w3-padding w3-button w3-round-large" style="margin:8px;" title="More"><%=session.getAttribute("user") %><i class="fa fa-caret-down"></i></button>     
	                <div class="w3-dropdown-content w3-bar-block w3-card-4">
	                    <a href="#" class="w3-bar-item w3-button">Your movies</a>
	                    <a href="#" class="w3-bar-item w3-button">Favorites</a>
	                    <a href="#" class="w3-bar-item w3-button">Change password</a>
	                    <a href="logout.jsp" class="w3-bar-item w3-button">Logout</a>
	                </div>
	            </div>
            <%} %>
            </div>
        </div>

        <!-- Content -->
        <div class="w3-content" style="max-width:2000px;margin-top:30px;">
		
		<%@ page import="model.Film,model.Person,java.util.List,java.util.Date,business.FilmLogic,business.PersonLogic" %>
		<% FilmLogic filmLogic = new FilmLogic(); 
		List<Film> films = filmLogic.getRecentFilms();
		%>
        <!--Recent content-->
        <div style="background-color:#c8c2bb;padding-top:20px;">
        <!--Recent movies section-->
        <div class="w3-display-container w3-padding"><!--bab4ad-->
            <span class="section-heading">Most recent movies</span>
            <div id="recentmovies" class="w3-cell-row w3-row-padding w3-padding" style="width:100%; margin-top:16px;display:flex;justify-content: center; ">
                <% for(Film f : films){ %>
                <div class="movie-thumbnail w3-card-4 w3-left  w3-center w3-round">
                    <img src="poster.jpg" alt="<%=f.getFilmName() %>>" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                    <span style="font-weight:bold;"><%=f.getFilmName() %></span>
                    <br>
                    <div style="position:absolute;bottom:0;left:19%;">User rating: <% if(f.getFilmNrRates()==0) 
                    		out.print(0); 
                		else out.print(f.getFilmRating()/f.getFilmNrRates()); 
                    	%>/5
                    </div> 
                </div>
                <% } %>
                            </div>
            <button class="slideshow-btn  w3-display-left" style="margin-left:4px;" onclick="plusDivs(-1,0)">&#10094;</button>
            <button class="slideshow-btn  w3-display-right" style="margin-right:4px;" onclick="plusDivs(+1,0)">&#10095;</button>
        </div>

        <!--Recent series section-->
        <div class="w3-display-container w3-padding" style="padding-top:20px;margin-top:50px;">
            <span class="section-heading">Most recent TV shows</span>
            <div id="recentseries" class="w3-row-padding w3-padding" style="  margin-top:16px; display:flex;justify-content: center;">
                <div class="series-thumbnail w3-card-4 w3-left w3-center w3-round">
                    <img src="poster.jpg" alt="Movie 1" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                    TV Series 1(Seasons,Episodes)
                    <br>
                    <div style="position:absolute;bottom:0;left:30%;">User rating: 5/5</div>
                </div>
                <div class="series-thumbnail w3-card-4 w3-left w3-center w3-round">
                    <img src="poster.jpg" alt="Movie 2" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                    TV Series 2(Seasons,Episodes)
                    <br>
                    <div style="position:absolute;bottom:0;left:30%;">User rating: 5/5</div>
                </div>
                <div class="series-thumbnail w3-card-4 w3-left w3-center w3-round">
                    <img src="poster.jpg" alt="Movie 3" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                    TV Series 3(Seasons,Episodes)
                    <br>
                    <div style="position:absolute;bottom:0;left:30%;">User rating: 5/5</div>
                </div>
            </div>
            <button class="slideshow-btn  w3-display-left" style="margin-left:4px;" onclick="plusDivs(-1,1)">&#10094;</button>
            <button class="slideshow-btn  w3-display-right" style="margin-right:4px;" onclick="plusDivs(+1,1)">&#10095;</button>
        </div>

		<%	PersonLogic personLogic = new PersonLogic();
			List<Person> birthdays = personLogic.getBirthdays();
		%>
        <!--Birthdays section-->
        <div class="w3-container w3-padding" style="padding-top:20px;margin-top:50px;">
            <span class="section-heading">Celebrities born today</span>
            <div style="display:flex; min-height:150px; overflow-x:scroll; margin-top:16px;font-size:0.9em;padding-top:16px;font-weight: bold;">
                <%Date today = new Date();
                for(Person p:birthdays){ %>
                <div class="actor-thumbnail w3-center" style="overflow:hidden;">
                    <div style="width:87%;margin:auto;">
                        <img src="portrait.jpg" alt="Actor1" class="thumbnail-image w3-image w3-circle">
                    </div>
                    <%=p.getPersonName() %>
                    <br>
                    <span style="font-weight:normal;"><%=today.getYear()-p.getPersonDOB().getYear() %></span>
                </div>
                <%} %>
            </div>
        </div>
        </div>

		<%films=filmLogic.getRatedFilms(); %>
        <!--Highly rated content-->
        <div style="background-color:#3b6978;color:whitesmoke;padding-top:30px;margin-top:30px;">
            <!--Highly rated movies-->
            <div class="w3-display-container w3-padding"><!--bab4ad-->
                <span class="section-heading">Highest rating movies</span>
                <div id="recentmoviesalt" class="w3-row-padding w3-padding" style="width:100%; margin-top:16px; display:flex;justify-content: center;">
                    <%for(Film f : films){ %>
                    <div class="movie-thumbnail-alt w3-card-4 w3-left w3-center w3-round">
                        <img src="poster.jpg" alt="Movie 1" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                        <%=f.getFilmName() %>
                        <br>
                        <div style="position:absolute;bottom:0;left:19%;">User rating: <%=f.getFilmRating() %>/5</div> 
                    </div>
                    <%} %>
                    <div class="movie-thumbnail-alt w3-card-4 w3-left w3-center w3-round">
                        <img src="poster.jpg" alt="Movie 2" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                        Movie 2
                        <br>
                        <div style="position:absolute;bottom:0;left:19%;">User rating: 5/5</div>
                    </div>
                    <div class="movie-thumbnail-alt w3-card-4 w3-left w3-center w3-round">
                        <img src="poster.jpg" alt="Movie 3" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                        Movie 3
                        <br>
                        <div style="position:absolute;bottom:0;left:19%;">User rating: 5/5</div>
                    </div>
                    <div class="movie-thumbnail-alt w3-card-4 w3-left w3-center w3-round">
                        <img src="poster.jpg" alt="Movie 4" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                        Movie 4
                        <br>
                        <div style="position:absolute;bottom:0;left:19%;">User rating: 5/5</div>
                    </div>
                    <div class="movie-thumbnail-alt w3-card-4 w3-left w3-middle w3-center w3-round">
                        <img src="poster.jpg" alt="Movie 5" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                        Movie 5
                        <br>
                        <div style="position:absolute;bottom:0;left:19%;">User rating: 5/5</div>
                    </div>
                </div>
                <button class="slideshow-btn-alt  w3-display-left" style="margin-left:4px;" onclick="plusDivs(-1,2)">&#10094;</button>
                <button class="slideshow-btn-alt  w3-display-right" style="margin-right:4px;" onclick="plusDivs(+1,2)">&#10095;</button>
            </div>

            <!--Highly rated series-->
            <div class="w3-display-container w3-padding" style="padding-top:20px;margin-top:50px;">
                <span class="section-heading">Highest rating TV Shows</span>
                <div id="recentseriesalt" class="w3-row-padding w3-padding" style="width:100%; margin-top:16px; display:flex;justify-content: center;">
                    <div class="series-thumbnail-alt w3-card-4 w3-left w3-center w3-round">
                        <img src="poster.jpg" alt="Movie 1" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                        TV Series 1(Seasons,Episodes)
                        <br>
                        <div style="position:absolute;bottom:0;left:30%;">User rating: 5/5</div> 
                    </div>
                    <div class="series-thumbnail-alt w3-card-4 w3-left w3-center w3-round">
                        <img src="poster.jpg" alt="Movie 2" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                        TV Series 2(Seasons,Episodes)
                        <br>
                        <div style="position:absolute;bottom:0;left:30%;">User rating: 5/5</div>
                    </div>
                    <div class="series-thumbnail-alt w3-card-4 w3-left w3-center w3-round">
                        <img src="poster.jpg" alt="Movie 3" class="thumbnail-image w3-image w3-round" style="padding-bottom:12px;">
                        TV Series 3(Seasons,Episodes)
                        <br>
                        <div style="position:absolute;bottom:0;left:30%;">User rating: 5/5</div>
                    </div>
                </div>
                <button class="slideshow-btn-alt  w3-display-left" style="margin-left:4px;" onclick="plusDivs(-1,3)">&#10094;</button>
                <button class="slideshow-btn-alt  w3-display-right" style="margin-right:4px;" onclick="plusDivs(+1,3)">&#10095;</button>
            </div>
        </div>
        </div>
    </body>
    <script>
	var slideIndex = 1;
	showDivs(slideIndex,0);
	showDivs(slideIndex,1);
	showDivs(slideIndex,2);
	showDivs(slideIndex,3);

	function plusDivs(n,sel) {
  		showDivs(slideIndex += n,sel);
	}
	
	function showForm(){
		var signInForm = document.getElementById("signInForm");
		signInForm.style.display = "block";
	}
	function closeForm(){
		var closeBtn = document.getElementsByClassName("close");
		signInForm.style.display = "none";
	}

	function showDivs(n,sel) {
  		var i;
  		var x;
  		var start,stop;
  		switch(sel){
	  		case 0: x= document.getElementsByClassName("movie-thumbnail");break;
	  		case 1: x= document.getElementsByClassName("series-thumbnail");break;
	  		case 2: x= document.getElementsByClassName("movie-thumbnail-alt");break;
	  		case 3: x= document.getElementsByClassName("series-thumbnail-alt");break;
  		}
  		if(sel==0 || sel==2){
  			if (n > x.length/5) {slideIndex = 1}
  			if (n < 1) {slideIndex = x.length/5}
  			start = (slideIndex-1)*5;
  			stop = slideIndex * 5;
  		}
  		else{
  			if (n > x.length/3) {slideIndex = 1}
  			if (n < 1) {slideIndex = x.length/3}
  			start = (slideIndex-1) * 3;
  			stop = slideIndex * 3;
  		}
		switch(sel){
			case 0: document.getElementById("recentmovies").style.opacity=0;break;
			case 1: document.getElementById("recentseries").style.opacity=0;break;
			case 2: document.getElementById("recentmoviesalt").style.opacity=0;break;
			case 3: document.getElementById("recentseriesalt").style.opacity=0;break;
		}
		setTimeout(function(){ 
  			for (i = 0; i < x.length; i++) {
  				x[i].style.display = "none";
  			}
  			switch(sel){
  				case 0:document.getElementById("recentmovies").style.opacity=1;break;
  				case 1:document.getElementById("recentseries").style.opacity=1;break;
  				case 2:document.getElementById("recentmoviesalt").style.opacity=1;break;
  				case 3:document.getElementById("recentseriesalt").style.opacity=1;break;
  			}
			for (i = start; i < stop; i++){
  				x[i].style.display = "block";
			}
			}, 250);
	};
    </script>
</html>