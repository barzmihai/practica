<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.fontsquirrel.com/fonts/gnu-free-font">
        <script src="celebrities.js"></script>
        <style>
            body {font-family: "FreeSans Regular";
                font-size:1.2em;}
            .thumbnail-image{
                max-width:200px;
            }
            .section-heading{
                font-family:"FreeSans Regular";
                font-weight:bold;
                font-size:1.2em;
                padding-left:40px;
            }

            .actor-row{
                margin-bottom:50px;
            } 
            .actor-col{
                max-width:25%;
                min-width:210px;
                margin-bottom:8px;
            }
            .actor-col-inner{
                background-color:#c8c2bb;
                width:75%;
                min-width:208px;
                margin:auto;
                padding-top:8px;
                padding-bottom:5px;
                cursor:pointer;
                -webkit-transition: opacity 0.33s ease-in-out;
                -moz-transition: opacity 0.33s ease-in-out;
                -ms-transition: opacity 0.33s ease-in-out;
                -o-transition: opacity 0.33s ease-in-out;
                transition: opacity 0.33s ease-in-out;
                opacity: 1;
            }
            .actor-col-inner:hover{
                opacity: 0.8;
            }

            #filteroptions{
                width:20%;
                height:1500px;
                background-color:#c8c2bb;
                -webkit-transition: all 0.4s ease-in-out;
	    		-moz-transition: all 0.4s ease-in-out;
	    		-ms-transition: all 0.4s ease-in-out;
	    		-o-transition: all 0.4s ease-in-out;
	    		transition: all 0.4s ease-in-out;
            }
            #actorlist{
                padding-top:20px; 
                width:80%;
                -webkit-transition: all 0.4s ease-in-out;
	    		-moz-transition: all 0.4s ease-in-out;
	    		-ms-transition: all 0.4s ease-in-out;
	    		-o-transition: all 0.4s ease-in-out;
	    		transition: all 0.4s ease-in-out;
            }
            .slideshow-btn{
                -webkit-transition: background-color 0.1s linear;
                -moz-transition: background-color 0.1s linear;
                -ms-transition: background-color 0.1s linear;
                -o-transition: background-color 0.1s linear;
                transition: background-color 0.1s linear;
                min-height:100px;
                width: 55px;
                border-width:0px;
                margin-right:-16px;
                color:#e7dfd5;
                background-color: #204051;
            }

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
            
        </style>
    </head>
    <body style="background-color: #e7dfd5;">
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
            <div class="w3-bar-item w3-padding w3-hide-small  w3-display-container">
                <form action="celebrities.jsp" method="GET">
                <input type="text" name="search" class="w3-bar-item w3-input w3-round-large" style="background-color: #e7dfd5; width:460px;" placeholder="Search for a movie or series...">
                <div class="w3-display-right">
                    <img src="search.png" class="w3-image" style="max-width:70px;">
                    <button type="submit" class="w3-btn w3-round-large" style="position:absolute;left:0;margin-top:13px;padding:0;border:none;width:55px;height:63%;background-color:transparent;"></button>
                </div>
                </form>
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
        <div class="w3-content" style="max-width:2000px;display:flex;">

        <!--Filter options section-->
        <div id="filteroptions" class="w3-container w3-padding-small w3-center">
            <div class="w3-display-container" style="height:500px;">
                <p id="filterMenuTitle" style="font-size:1.2em;font-weight:bold;">Sort & Filter options</p>
                <form id="filterOptionsForm" class="w3-container" style="text-align:left;">
                    <input type="hidden" name="search" class="w3-bar-item w3-input w3-round-large" value="<%=request.getParameter("search") %>">
                    <input type="hidden" name="page" class="w3-bar-item w3-input w3-round-large" value="<%=request.getParameter("page") %>">
                    <p>
                        <input class="w3-radio" type="radio" name="order" value="Ascending" checked>
                        <label>Ascending<br></label>
                        <input class="w3-radio" type="radio" name="order" value="Descending">
                        <label>Descending</label>
                    </p>
                    <p>
                        <label>Age between <br></label>
                        <input type="text" name="agelow" style="width:30%;">
                        <label><br> and <br></label>
                        <input type="text" name="agehigh" style="width:30%;">
                    </p>
                    <p>
                        <input class="w3-check" type="checkbox" name="actor" checked="checked">
                        <label>Actor<br></label>

                        <input class="w3-check" type="checkbox" name="director" >
                        <label>Director<br></label>

                        <input class="w3-check" type="checkbox" name="other">
                        <label>Other</label>
                    </p>
                    <button class="w3-btn" type="submit" style="width:100%;margin-top:20px;background-color:#204051; color:white;">Filter</button>
                </form>
                <button id="filterMenuBtn" class="slideshow-btn  w3-display-right w3-btn" onclick="toggleFilterMenu();">&#10094;</button>
            </div>
        </div>

        <!--Actor list section-->
        <%@page import="java.util.List,business.PersonLogic,model.Person,java.util.concurrent.atomic.AtomicInteger" %>
        <div id="actorlist" class="w3-container w3-padding">
            <div class="w3-container" style="margin-top:56px;padding-top:16px;font-weight: bold;">
                <%	PersonLogic personLogic = new PersonLogic();
                	AtomicInteger nrOfPages = new AtomicInteger(0);
                	String search = (request.getParameter("search")==null || request.getParameter("search").compareTo("null")==0 ? "" : request.getParameter("search"));
                	int pageNr = (request.getParameter("page")==null || request.getParameter("page").compareTo("null")==0 ? 1 : Integer.parseInt(request.getParameter("page")));
                	String order = (request.getParameter("order")==null || request.getParameter("order").compareTo("null")==0  ? "Ascending" : request.getParameter("order"));
                	int ageLow = (request.getParameter("agelow")==null || request.getParameter("agelow").compareTo("null")==0 || request.getParameter("agelow").compareTo("")==0 ? 0 : Integer.parseInt(request.getParameter("agelow")));
                	int ageHigh = (request.getParameter("agehigh")==null || request.getParameter("agehigh").compareTo("null")==0 || request.getParameter("agehigh").compareTo("")==0 ? 200 : Integer.parseInt(request.getParameter("agehigh")));
                	List<Person> persons = personLogic.getPersonPage(search,pageNr,order,ageLow,ageHigh,0,nrOfPages); %>
                <%for(int i = 0; i < persons.size(); i+=4) {%>
	                <div class="actor-row w3-row">
	                <%for(int j = i; j < persons.size() && j < i+4; j++){ %>
	                <div class="actor-col w3-col w3-center">
	                    <div class="actor-col-inner w3-round">
	                        <div>
	                            <img src="portrait.jpg" alt="Actor<%=i+(pageNr-1)*28 %>" class="thumbnail-image w3-image">
	                        </div>
	                        <p> <%=persons.get(j).getPersonName() %>
	                            <br>
	                            <span style="font-weight:normal;">Actor</span>
	                        </p>
	                    </div>
	                </div>
	                <%}} %>

                </div>
                <div class="w3-row w3-center">
                    <div class="pagination w3-cell" >
                    	<%if(pageNr>1){ %>
                        	<a href="celebrities.jsp?search=<%=request.getParameter("search")%>&page=<%if(request.getParameter("page")!=null && request.getParameter("page").compareTo("null")!=0 && Integer.valueOf(request.getParameter("page")) > 1) out.print(Integer.valueOf(request.getParameter("page")) - 1); else out.print(1); %>&order=<%=request.getParameter("order")%>&agelow=<%=request.getParameter("agelow")%>&agehigh=<%=request.getParameter("agehigh")%>&actor=<%=request.getParameter("actor")%>&director=<%=request.getParameter("director")%>&other=<%=request.getParameter("other")%>">&laquo;</a>
                        <%} %>
                        
                        <%for(int i = (pageNr>1 ? pageNr-1 : pageNr); i < (pageNr>1 || pageNr<nrOfPages.get()-2 ? pageNr+2 : pageNr+3) && i <= nrOfPages.get()-1; i++){ %>
                        	<%if(i==pageNr){ %>
                        		<a class="active" href="celebrities.jsp?search=<%=request.getParameter("search")%>&page=<%=i %>&order=<%=request.getParameter("order")%>&agelow=<%=request.getParameter("agelow")%>&agehigh=<%=request.getParameter("agehigh")%>&actor=<%=request.getParameter("actor")%>&director=<%=request.getParameter("director")%>&other=<%=request.getParameter("other")%>"><%=i %></a>	
                        	<%}else{ %>
                        		<a href="celebrities.jsp?search=<%=request.getParameter("search")%>&page=<%=i %>&order=<%=request.getParameter("order")%>&agelow=<%=request.getParameter("agelow")%>&agehigh=<%=request.getParameter("agehigh")%>&actor=<%=request.getParameter("actor")%>&director=<%=request.getParameter("director")%>&other=<%=request.getParameter("other")%>"><%=i %></a>	
                        <%}} %>
                        <%if(pageNr<nrOfPages.get()-2){ %>
                        	<a>...</a>	
                        <%} %>
                        <%if(nrOfPages.get()>1){
                        	if(pageNr!=nrOfPages.get()){
                        %>
                        	<a href="celebrities.jsp?search=<%=request.getParameter("search")%>&page=<%=nrOfPages.get() %>&order=<%=request.getParameter("order")%>&agelow=<%=request.getParameter("agelow")%>&agehigh=<%=request.getParameter("agehigh")%>&actor=<%=request.getParameter("actor")%>&director=<%=request.getParameter("director")%>&other=<%=request.getParameter("other")%>"><%=nrOfPages.get()%></a>	
                        <%}else{ %>
                        	<a class="active" href="celebrities.jsp?search=<%=request.getParameter("search")%>&page=<%=nrOfPages.get() %>&order=<%=request.getParameter("order")%>&agelow=<%=request.getParameter("agelow")%>&agehigh=<%=request.getParameter("agehigh")%>&actor=<%=request.getParameter("actor")%>&director=<%=request.getParameter("director")%>&other=<%=request.getParameter("other")%>"><%=nrOfPages.get()%></a>	
                        <%}} %>
                        <%if(pageNr!=nrOfPages.get()){ %>
                        	<a href="celebrities.jsp?search=<%=request.getParameter("search")%>&page=<%if(request.getParameter("page")!=null && request.getParameter("page").compareTo("null")!=0 ) out.print(Integer.valueOf(request.getParameter("page")) + 1); else out.print(1); %>&order=<%=request.getParameter("order")%>&agelow=<%=request.getParameter("agelow")%>&agehigh=<%=request.getParameter("agehigh")%>&actor=<%=request.getParameter("actor")%>&director=<%=request.getParameter("director")%>&other=<%=request.getParameter("other")%>">&raquo;</a>
                        <%} %>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </body>
</html>