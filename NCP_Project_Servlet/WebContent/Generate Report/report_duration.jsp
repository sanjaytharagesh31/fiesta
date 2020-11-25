<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report Generation - Duration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">
</head>
<style>
  #for {
        background-color: rgba(0, 0, 0, 0.3) !important;
        font-size: 100% !important;
        text-align: center !important;
        padding-top: 40px !important;
        padding-bottom: 50px !important;
        width: 550px !important; 
        margin:auto auto !important; 
        font-family: 'Aleo' ;font-size:large !important;
        color: #FFFFFF;
        text-shadow: 0px 4px 3px rgba(0,0,0,0.4),
                    0px 8px 13px rgba(0,0,0,0.1),
                    0px 18px 23px rgba(0,0,0,0.1);
    
    }
    #ahe1{
      padding-left: 30%;
      font-size: xx-large !important;
    }
    #ahe2{
        padding-left: 42%;
        font-size: larger !important;
    }
    table{
        border: 1px solid black;
        margin-left: 15%;
    }
    table, th, td {
     border: 1px solid black;
     border-collapse: collapse;
}
</style>
<body>
	<nav class="navbar" role="navigation" aria-label="main navigation">
		<div class="navbar-brand">
			<a class="navbar-item" href="../admin_dashboard/admin_dashboard.html">
				<img src="../Logo/Fiesta.PNG" width="112" height="28">
			</a>
		</div>

		<div id="navbarBasicExample" class="navbar-menu">
			<div class="navbar-start">

				<div class="navbar-item has-dropdown is-hoverable">
					<a class="navbar-link">
						Announcements
					</a>

					<div class="navbar-dropdown">
						<a class="navbar-item" href="../Announcements/Create_announcement.html">
							Create New Announcement
						</a>
						<a class="navbar-item" href="../Announcements/delete_update.html">
							Update/Delete Announcement
						</a>
						<a class="navbar-item" href="../Announcements/Latest_News.html">
							Latest News
						</a>

					</div>
				</div>

				<div class="navbar-item has-dropdown is-hoverable">
					<a class="navbar-link">
						Events
					</a>

					<div class="navbar-dropdown">
						<!-- <a class="navbar-item">
							View Events
						</a> -->
						<a class="navbar-item" href="../Events/create_event.html">
							Create New Event
						</a>
						<a class="navbar-item" href="../Events/update_winners.html">
							Update Event Winners
						</a>
						<a class="navbar-item" href="../Events/update_event.html">
							Update Event Details
						</a>
						<a class="navbar-item" href="../admin_dashboard/admin_view-events.html">
							View All Events
						</a>
						<a class="navbar-item" href="../admin_dashboard/admin_view-students.html">
							View Student Registrations
						</a>

					</div>
				</div>
				<div class="navbar-item has-dropdown is-hoverable">
					<a class="navbar-link">
						Generate Report
					</a>

					<div class="navbar-dropdown">
						
						<a class="navbar-item" href="../Generate Report/generate_report_based_on_input.html">
							Based on Input
						</a>
						<a class="navbar-item" href="../Generate Report/generate_report_based_on_duration.html">
							Based on Duration
						</a>
						

					</div>
			</div>
				<a class="navbar-item" href="../Search/search_tags.html">
					Search
				</a>
				<a class="navbar-item" href="../Leaderboard/leaderboard_table.html">
					Leaderboard
				</a>
				
			</div>

			<div class="navbar-end">
				<div class="navbar-item">
					<div class="buttons">
						<p id="ha"><b>Hello Admin:) &ensp;&ensp; </b></p>
						<a href="../Landing_page/home_page.html" id="ab1" class="button is-danger">
							<strong>LOG OUT</strong>
						</a>
					</div>
				</div>
			</div>
		</div>
	</nav>       
</body>
<h1 id="ahe1"> <b>Generate Report Based on Duration</b> </h1>
<form id="for" action="">
  <label for="entrydate">From:</label>
  <input type="date" name="entrydate" id="entrydate">
  <label for="closedate">To:</label>
  <input type="date" name="closedate" id="closedate">
  <br>
  <br>
  <button class="button is-success">Generate Report</button>
</form>
<br>
<h2 id="ahe2"> <b>Report Generated</b> </h2>
<br>
<table style="width: 70%;">
    <tr>
        <th>Event ID</th>
        <th>Event name</th>
        <th>Student Name</th>
        <th>Student's University</th>
        <th>Game</th>
    </tr>
    <tr>
        <td>101</td>
        <td>Inter Campus Championship</td>
        <td>Ram</td>
        <td>PSG</td>
        <td>Football</td>

    </tr>
    <tr>
     <td>102</td>
     <td>State Level</td>
     <td>Jose</td>
     <td>Sri Krishna</td>
     <td>Basket Ball</td>

 </tr>
 <tr>
         <td>103</td>
         <td>National Level</td>
         <td>Krishna</td>
         <td>Amrita</td>
         <td>Volleyball</td>
 </tr>
 <tr>
     <tr>
         <td>104</td>
         <td>Inter Campus Championship</td>
         <td>Teja</td>
         <td>PSG</td>
         <td>Football</td>

     </tr>
 </tr>


</table>
</html>
