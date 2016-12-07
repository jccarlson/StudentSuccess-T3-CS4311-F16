
<!--/*This will change to fit the JSP/MVC implementation*/-->

<html>

<head>
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Michroma" />
<link rel="stylesheet" type="text/css" href="../css/styles.css" />
<link rel="stylesheet" type="text/css" href="../css/table.css" />
<link rel="stylesheet" type="text/css" href="../css/searchBox.css" />
<link rel="stylesheet" type="text/css"
	href="../css/fundedProjectsStyle.css" />
<link rel="stylesheet" type="text/css"
	href="../css/analysisSectionStyle.css" />

</head>
<body>
	<div id="mainWrapper">

		<!------------HEADER------------->
		<div id="HeaderWrapper">
			<div id="HeaderInner">
				<div id="HeaderTextWrapper">
					<p id="HeaderText">Accelerating, Connecting and Evaluating
						Student Success</p>
				</div>

				<img id="AccessImage" src="../images/uteplogo.png" alt="Utep Logo"
					style="width: 85px; height: 65px;">

				<div id="UserAndButtonWrapper">
					<p id="UserName">User:John Doe</p>
					<button id="SignOutButton">Button</button>
				</div>
			</div>
		</div>
		<!------------HEADER------------->

		<!---------CONTENT------------->
		<div id="ContentWrapper">
			<div id="ContentWrapperInner">


				<script>
                        var x = window.location.pathname;
                        document.write(x);
                        var currentLocation = window.location.pathname;
                        if (currentLocation == "/SSI/resources.jsp") {
                            $('#resources').css({background - color:black});
                        }


                    </script>

				<div id="sidenav">
					<h2>Menu</h2>
					<ul>
						<!--Runs a JavaScript function to set the sidenav state
                            depending on the current URL-->
						<li id="resources"><a href="../resources/resources.jsp">My
								Resources</a></li>
						<ul id="subNav" style="margin-left: 80px;">
							<li id="fundedProjectsView"><a
								href="../resources/fundedProjectsView.jsp">Funded Projects</a></li>
						</ul>

						<li id="directory"><a href="../directory/directory.jsp">Directory</a></li>
						<li id="analysis"><a href="../analysis/analysis.jsp">Analysis</a></li>
					</ul>
				</div>

				<div id="MainContentWrapper">
					<div id="MainContentWrapperInner">
						<div id="ResourcesContainer">
							<div id="fundedListContainer" class="box">

								<p class="header14PBold" style="margin-left: 10px">List of
									Funded Projects</p>
								<p class="header12P" style="margin-left: 10px">Please select
									from the list of funded projects of your own.</p>
								<input id="searchFunded" type="text" placeholder="Search">


								<div id="fundedListtableWrapper"
									style="height: 300px; overflow: auto;">
									<table id="resourceTable">
										<thead>
											<th></th>
											<th>Project Title</th>
											<th>Project Description</th>
										</thead>

										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 1</td>
											<td>Description 1</td>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 2</td>
											<td>Description 2</td>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 3</td>
											<td>Description 3</td>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 4</td>
											<td>Description 4</td>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 5</td>
											<td>Description 5</td>
										</tr>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 5</td>
											<td>Description 5</td>
										</tr>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 5</td>
											<td>Description 5</td>
										</tr>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 5</td>
											<td>Description 5</td>
										</tr>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 5</td>
											<td>Description 5</td>
										</tr>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 5</td>
											<td>Description 5</td>
										</tr>
										</tr>
										<tr>
											<td><input value="" type="radio" name="selectProject"></td>
											<td>Project Title 5</td>
											<td>Description 5</td>
										</tr>

									</table>

								</div>

								<div id="fundedProjectsbuttonWrapper">
									<button>Select</button>
								</div>


								<div id="paginationBlockWrapper">
									<ul class="pagination">
										<li><a href="#">«</a></li>
										<li><a class="active" href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#">6</a></li>
										<li><a href="#">7</a></li>
										<li><a href="#">»</a></li>
									</ul>
								</div>

							</div>
						</div>

					</div>

				</div>




			</div>

		</div>
		<!---------CONTENT------------->

		<!---------FOOTER------------->
		<div id="FooterWrapper">
			<div id="footer">
				<p>
					&copyACCESS Developed by JJCOM Team 3 <br> Created as a
					capstone project for CS4310 and CS 4311<br> &copyACCESS
					Software is property of The University of Texas At El Paso
				</p>
			</div>
		</div>
		<!---------FOOTER------------->

	</div>

</body>


</html>

