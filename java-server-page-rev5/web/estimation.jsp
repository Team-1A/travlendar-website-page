
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<html>
    <head>
        <title>Travlender</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link href="css/admin.css" rel="stylesheet">
        <link href="css/fullcalendar.min.css" rel="stylesheet">
        <link href="css/fullcalendar.print.min.css" rel="stylesheet" media="print">  
        <link rel="stylesheet" type="text/css" href="css/responsive.css">       
        <script type="text/javascript" src="js/moment.min.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/fullcalendar.min.js"></script>
    </head>
    <body>
        <script>

  $(document).ready(function() {
    
    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay,listWeek'
      },
      defaultDate: '2017-09-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
         {
          title: 'Kegiatan di Bandara',
          start: '2017-09-19T04:30:00',
          end: '2017-09-19T16:10:00'
        },
		
		{
          title: 'Sampai di Bandara Kendari',
          start: '2017-09-19T11:10:00',
          end: '2017-09-19T11:30:00'
        },
		
		{
          title: 'Pertemuan dengan Departement Agama',
          start: '2017-09-19T12:00:00',
          end: '2017-09-19T15:15:00'
        },
		
		{
          title: 'Makan Sore',
          start: '2017-09-19T15:30:00',
          end: '2017-09-19T16:30:00'
        },
      ]
    });
    
  });
</script>

<!--script sidebar-->
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>

</head>
<body>
<!--judul-->
  <div id="header">
    <div class="logo">
      <img src="css/logo.png " width="200px" height="35px">
    </div>
</div>
<a class="mobile"></a>

<!--sidebar-->
 <div class="tab">
    <button class="tablinks" onclick="openPages(event, 'My Schedule')">My Schedule</button>
    <button class="tablinks" onclick="openPages(event, 'Calendar')">Calendar</button>
    <button class="tablinks" onclick="openPages(event, 'Travel_Data')" id="defaultOpen">Travel Data</button>
</div>

<!--isi dari sidebar-->

<!--My Schedule-->
<div id="My Schedule" class="tabcontent">
    <div class="content">
      <div id="box">
        <div class="box-top">My Schedule</div>
      <div class="box-panel">
        <div class="menu_atas">
          <div class="menunya2">
            <a href="create_schedule.jsp">Create Schedule</a>
        </div>
      </div>
     </div>
     
     <div class="box-panel">

      <iframe src="schedule_scroll.jsp" width="945" height="330" scrolling="yes">
        </iframe>
        <div class="back">
        <a href="index.jsp"><img src="css/icon/back.png" ></a>
        </div>
      </div>
    </div>
  </div>
</div>
	
<!--Calendar-->
<div id="Calendar" class="tabcontent">
  
<div class="content">
  <div id="box">
    <div class="box-top">Calendar</div>
      <div class="box-panel">
       <div id='calendar'></div>
     </div>
    </div>
  </div>
</div>

<!--Travel Data-->
<div id="Travel_Data" class="tabcontent">
 <div class="content">
  <div id="box">
    <div class="box-top">Travel Data</div>
     <div class="box-panel">
      <div class="menu_atas">
        <!--Lokasi-->
             <div class="menunya">
          <img src="css/icon/location.png "><br>
            <a href="location.jsp" id="defaultOpen">Location</a>
          </div>
        
        <div class="menunya">
          
          <img src="css/icon/transportation.png "><br>
          <a href="transportation.jsp">Transportation Mode</a>
        </div>
      
        
        <div class="menunya">
          <img src="css/icon/distance.png "><br>
          <a href="distance.jsp">Manage Distance</a>
        </div>
      

        <div class="menunya">
          <div class="point">
          <img src="css/icon/estimation.png "><br>
          <a href="estimation.jsp" id="defaultOpen">Estimation Time</a>
        </div>
        </div>
            
            
        </div>
     </div>
     
     <!--kiri-->
  <div class="box-panel">
    <div class="kiri">
        <iframe src="scroll_estimation.jsp" width="580" height="350" scrolling="yes"></iframe>
    </div>

      <!--kanan-->
  <div class="kanan">

      <h2>Add Destination Time</h2>

          <!--pemilihan destination-->
          <span>Destination</span><br>
              <select name="transportation" >
                  <option value="Rumah Fatmawati">Rumah Fatmawati</option>
                   <option value="Bandara Soekarno Hatta, Tangerang">Bandara Soekarno Hatta, Tangerang</option>
                   <option value="Bandara Haluoleo, kadia">Bandara Haluoleo, kadia</option>
                   <option value="Hotel "x" Kadia">Hotel "x" Kadia</option>
                  <option value="Restoran Poasia">Restoran Poasia</option>
                  
              </select>
          <br><br>

          <!--Estimtion time-->
          <form action="create_schedule.jsp">
          <span>Estimation Time</span><br><br>
              <span>Car</span><br>
                  <input class="time" type="text"  name="#" placeholder="hour">
                  <input class="time" type="text"  name="#" placeholder="minutes"><br>
              
              <span>Motorcycle</span><br>
                  <input class="time" type="text"  name="#" placeholder="hour">
                  <input class="time" type="text"  name="#" placeholder="minutes"><br>
              
              
                  <input class="add_button" type="add" name="#" value="Add">
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
      function openPages(evt, pageName) {
      // Declare all variables
      var i, tabcontent, tablinks;

      // Get all elements with class="tabcontent" and hide them
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }

      // Get all elements with class="tablinks" and remove the class "active"
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

      // Show the current tab, and add an "active" class to the link that opened the tab
      document.getElementById(pageName).style.display = "block";
      evt.currentTarget.className += " active";
	
  } 
  // Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
    </body>
</html>
