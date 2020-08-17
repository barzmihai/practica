var isFilterMenuOpen = 1;
        function toggleFilterMenu(){
            if(isFilterMenuOpen){
                document.getElementById('filterOptionsForm').style.display='none';
                document.getElementById('filterMenuTitle').innerHTML=' ';
                document.getElementById('filteroptions').style.width='4%';
                document.getElementById('filteroptions').style.backgroundColor='transparent';
                document.getElementById('filteroptions').style.color='transparent';
                document.getElementById("actorlist").style.width='100%';
                document.getElementById("filterMenuBtn").innerHTML = '&#10095';
            }
            else{
                setTimeout(function(){
                    document.getElementById('filterMenuTitle').innerHTML='Sort & Filter options';
                    document.getElementById('filterOptionsForm').style.display='block';
                    },400);
                document.getElementById('filteroptions').style.width='20%';
                document.getElementById('filteroptions').style.backgroundColor='#c8c2bb';
                document.getElementById('filteroptions').style.color='black';
                document.getElementById("actorlist").style.width='80%';
                document.getElementById("filterMenuBtn").innerHTML = '&#10094';
            }
            isFilterMenuOpen = !isFilterMenuOpen;
        }