
<!--/*This will change to fit the JSP/MVC implementation*/-->
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
        <link rel="stylesheet" type="text/css" href="../css/fundedProjectsStyle.css"/>
        <link rel="stylesheet" type="text/css" href="../css/analysisSectionStyle.css"/>

    </head>
    <body>
        <div id="mainWrapper">

            <!------------HEADER------------->
            <div id="HeaderWrapper">
                <div id="HeaderInner">
                    <div id="HeaderTextWrapper"><p id="HeaderText">Accelerating, Connecting and Evaluating Student Success</p></div>

                    <img id="AccessImage" src="../images/uteplogo.png" alt="Utep Logo" style="width:85px;height:65px;">

                    <div id="UserAndButtonWrapper">
                        <p id="UserName"> User:<?php echo "  " . $username ?></p>
                        <button id="SignOutButton"> <?php echo $buttonState ?> </button>
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
                        if (currentLocation == "/SSI/resources.php") {
                            $('#resources').css({background - color:black});
                        }


                    </script>

                    <div id="sidenav">
                        <h2>Menu</h2>
                        <ul>
                            <!--Runs a JavaScript function to set the sidenav state
                            depending on the current URL-->
                            <li id="resources"><a href="../resources/resources.php">My Resources</a></li>
                            <ul id="subNav" style="margin-left: 80px;">
                                <li id="fundedProjectsView"><a href="../resources/fundedProjectsView.php">Funded Projects</a></li>
                            </ul>

                            <li id="directory"><a href="../directory/directory.php">Directory</a></li>
                            <li id="analysis"><a href="../analysis/analysis.php">Analysis</a></li>
                        </ul>
                    </div>

                    <div id="MainContentWrapper">
                        <div id="MainContentWrapperInner">
                            <div id="ResourcesContainer">
                                <div id="fundedListContainer" class="box">

                                    <p class="header14PBold" style="margin-left: 10px">Link Existing Activity </p>
                                    <p class="header12P" style="margin-left: 10px">Please select an activity.</p>
                                    <input id="searchActivity" style="margin-left: 960px;"  type="text" placeholder="Search Activity">


                                    <div id="fundedListtableWrapper" style="height: 300px; overflow: auto;">
                                        <table id="resourceTable">
                                            <thead>
                                            <th></th>
                                            <th>Title</th>
                                            <th>Description</th>
                                            <th>Activity Date</th>
                                            <th>Linked Activity</th>
                                            <th>Owner</th>
                                            </thead>
                                            <tr>
                                                <td><input value="" type="radio" name="selectProject"</td> 
                                                <td>Activity Title 1 </td>
                                                <td>Description 1</td>
                                                <td>MM-DD-YY</td>
                                                <td>No</td>
                                                <td><a href="testpage.php">Owner A</a></td>
                                            </tr>
                                             <tr>
                                                <td><input value="" type="radio" name="selectProject"</td> 
                                                <td>Activity Title 2 </td>
                                                <td>Description 2</td>
                                                <td>MM-DD-YY</td>
                                                <td>Yes</td>
                                                <td><a href="testpage.php">Owner B</a></td>
                                            </tr>
                                             <tr>
                                                <td><input value="" type="radio" name="selectProject"</td> 
                                                <td>Activity Title 3 </td>
                                                <td>Description 3</td>
                                                <td>MM-DD-YY</td>
                                                <td>No</td>
                                                <td><a href="testpage.php">Owner A</a></td>
                                            </tr>
                                            
                                            
                                        </table>

                                    </div>

                                    <div id="fundedProjectsbuttonWrapper">
                                        <button>Select</button>
                                        <button onclick="alert('Linking Cancelled'); document.location = 'initiativeDetailedView.php'">Cancel</button
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
                    <p><?php echo $collaborations ?><br></p>
                </div>
            </div>
            <!---------FOOTER------------->

        </div>

    </body>


</html>

