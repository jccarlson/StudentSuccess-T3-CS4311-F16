<?php
include_once '../collaborations.php';
$username = "John Doe";
$buttonState = "Sign off";
?>
<html>

    <head>
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Michroma" />
        <link rel="stylesheet" type="text/css" href="../css/styles.css"/>
        <link rel="stylesheet" type="text/css" href="../css/table.css"/>
        <link rel="stylesheet" type="text/css" href="../css/searchBox.css"/>
        <link rel="stylesheet" type="text/css" href="../css/paginationBlock.css"/>
        <link rel="stylesheet" type="text/css" href="../css/directorySectionStyles.css"/>
        <script src="../js/Dialogs.js" async></script> 
        <script src="../js/directoryDropdowns.js" async></script> 
        
    </head>
    <body>
        <div id="mainWrapper">

            <!------------HEADER------------->
            <div id="HeaderWrapper">
                <div id="HeaderInner">
                    <div id="HeaderTextWrapper"><p id="HeaderText">Accelerating, Connecting and Evaluating Student Success</p></div>

                    <img id="AccessImage" src="../images/uteplogo.png" alt="Utep Logo" style="width:85px;height:65px;">

                    <div id="UserAndButtonWrapper">
                        <p id="UserName"> User:John Doe</p>
                        <button id="SignOutButton"> Button </button>
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
                            <li id="resources"><a href="../resources/resources.jsp">My Resources</a></li>
                            <ul id="subNav" style="margin-left: 80px;">
                                <li id="fundedProjectsView"><a href="../resources/fundedProjectsView.jsp">Funded Projects</a></li>
                            </ul>

                            <li id="directory"><a href="../directory/directory.jsp">Directory</a></li>
                            <li id="analysis"><a href="../analysis/analysis.jsp">Analysis</a></li>
                        </ul>
                    </div>

                    <div id="MainContentWrapper">
                        <div id="MainContentWrapperInner">


                            <div id="directoryContainer">
                                <p id="dirHeader">Welcome to Accelerating, Connecting and Evaluating Student Success (ACCESS)<p>

                                <div id="searchByLabelWrapper">   
                                    <ul>
                                        <li>Search by College</li>
                                        <li>Search by Department</li>
                                        <li>Search by Category</li>
                                        <li>Search by Date</li>
                                        <li>Search by Keyword</li>
                                        <li>Show All Initiatives</li>
                                    </ul>
                                </div>


                                <div id="dropdownWrapper">
                                    <select id="CollegeSelector" onchange="dropdowns();">
                                        <option value="select">Select a College</option>
                                        <option value="business">College Business</option>
                                        <option value="education">College of Education</option>
                                        <option value="engineering">College of Engineering</option>
                                        <option value="health">College of Health Science</option>
                                        <option value="liberal">College of Liberal Arts</option>
                                        <option value="nursing">School of Nursing</option>
                                        <option value="science">College of Science</option>
                                    </select>
                                    <br>
                                    <select id="DepartmentSelector">
                                        <option value="business">Select a Department</option>
                                    </select>
                                    <br>
                                    <select id="CategorySelector">
                                        <option value="business">Category</option>
                                    </select>
                                    <br>
                                    <select id="StartDateSelector">
                                        <option value="business">Start Date</option>
                                    </select>

                                    <select id="EndDateSelector">
                                        <option value="business">End Date</option>
                                    </select>
                                    <br>
                                    <select id="KeywordSelector">
                                        <option value="business">Keyword</option>
                                    </select>
                                    <br>
                                    <select id="InitiativeSelector">
                                        <option value="business">Show All</option>
                                    </select>
                                    <br>
                                </div>
                                <div id="tableWrapper2">
                                    <table id="directoryTable">
                                        <tr>
                                            <th id="tickBox"></th>
                                            <th>Initiative Title</th>
                                            <th>Initiative Description</th>
                                            <th>Category</th>
                                            <th>Owner</th>
                                            <th>Creation Date</th>
                                        </tr>
                                        <tr>
                                            <td class="center" ><input type="checkbox" id="checkbox1"></td>
                                            <td>Initiative Title 1</td>
                                            <td>Description 1</td>
                                            <td>Category A</td>
                                            <td>Owner A</td>
                                            <td>MM-DD-YYYY</td>
                                        </tr>
                                        <tr>
                                            <td class="center" ><input type="checkbox" id="checkbox2"></td>
                                            <td>Initiative Title 2</td>
                                            <td>Description 2</td>
                                            <td>Category B</td>
                                            <td>Owner B</td>
                                            <td>MM-DD-YYYY</td>
                                        </tr>
                                        <tr>
                                            <td class="center" ><input type="checkbox" id="checkbox3"></td>
                                            <td>Initiative Title 3</td>   
                                            <td>Description 3</td>
                                            <td>Category A</td>
                                            <td>Owner A</td>
                                            <td>MM-DD-YYYY</td>
                                        </tr>

                                    </table>
                                </div>

                                <div id="DonwloadLabelWapper">
                                    <label for="excelIcon">Download Summary Report as Excel
                                        <img id="excelIconDwnldSummary" src="../images/excelIcon.png" height="35" width="35" onclick="downloadDialogXlsx();">
                                        or PDF  <img id="pdfIconDwnldSummary" src="../images/pdfIcon.png" height="30" width="30" onclick="downloadDialogPdf();" >                                
                                        <br></label>
                                    <label for="excelIcon">Download Detailed Report as Excel
                                        <img id="excelIconDwnldDetailed" src="../images/excelIcon.png" height="35" width="35" onclick="downloadDialogXlsx();">
                                        or PDF  <img id="pdfIconDwnldDetailed" src="../images/pdfIcon.png" height="30" width="30" onclick="downloadDialogPdf();">                                
                                        <br></label>
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

