
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
        <link rel="stylesheet" type="text/css" href="../css/paginationBlock.css"/>
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
                                
                                <p id="resourcesWelcome" class="header14PBold">Welcome <?php echo $username?> here is your Projects and Initiative Lists</p>
                                
                                <a href="search.php">
                                    <img id="searchIcon" src="../images/magnifying.png" style="width:30px;height:35px;">
                                </a>
                                <div id="serachBoxWrapper">
                                    <input type="text" name="search" placeholder="Search..">
                                </div>
                                <div id="tableWrapper2">
                                    <table id="resourceTable">
                                        <tr>
                                            <th>Title</th>
                                            <th>Type</th>
                                            <th>Role</th>
                                            <th>Last Modified Date</th>
                                        </tr>
                                        <tr>
                                            <td onclick="document.location = 'projectDetailedView.php'">Project Title 1</td>
                                            <td>Project</td>
                                            <td>Owner</td>
                                            <td>MM-DD-YYY</td>
                                        </tr>
                                        <tr>
                                            <td>Initiative Title 1</td>
                                            <td>Initiative</td>
                                            <td>IA</td>
                                            <td>MM-DD-YYYY</td>
                                        </tr>
                                        <tr>
                                            <td>Project Title 2</td>
                                            <td>Project</td>
                                            <td>PA</td>
                                            <td>MM-DD-YYYY</td>
                                        </tr>

                                    </table>

                                </div>

                                <div id="buttonWrapper">
                                    <button>Add Project</button>
                                    <button>Add Initiative</button>
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

