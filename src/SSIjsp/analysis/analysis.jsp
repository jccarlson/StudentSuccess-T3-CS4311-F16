
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

                            <div id="AnalysisContainer">

                                <p id="analysisHeader">
                                    Welcome to the Accelerating, Connecting, and Evaluating Student Success (ACCESS)
                                </p>


                                <div id="QueryBoxWrapper" class="box">


                                    <div id="QuerryBox" class="box">
                                        <div id="boxheaderP" class="boxheader">
                                            <p>Querry</p>
                                        </div>
                                        <p id="queryp" class="analysisSelectLabel">Type</p>
                                        <select id="typeSelector">
                                            <option>Select a Type</option>
                                        </select>
                                    </div>


                                    <div id="FilterBox" class="box">

                                        <div id="boxheaderP" class="boxheader">
                                            <p>Filters</p>
                                        </div>

                                        <div id="wrapper1" class="wrapper">
                                            <p id="categoryP">Category</p>
                                            <select>
                                                <option>Select a Type</option>
                                            </select>

                                        </div>


                                        <div id="wrapper2" class="wrapper">
                                            <p id="classificationP">Classification</p>
                                            <select>
                                                <option>Classification</option>
                                            </select>
                                        </div>


                                        <div id="wrapper3" class="wrapper">
                                            <p id="GraduateP">Graduates</p>
                                            <input id="yesR "type="radio" name="desicion" value="yes"><p id="yes">Yes</p>
                                            <input id="noR" type="radio" name="desicion" value="no"><p id="no">No</p>
                                        </div>


                                        <div id="wrapper4" class="wrapper">
                                            <p id="MajorFieldP">Major Field</p>
                                            <select>
                                                <option>Major Field</option>
                                            </select>
                                        </div>

                                        <div id="wrapper5" class="wrapper">
                                            <p id="DepartmentP">Department</p>
                                            <select>
                                                <option>Department</option>
                                            </select>
                                        </div>


                                    </div>


                                    <div id="RestrictionBox" class="box">

                                        <div id="boxheaderP" class="boxheader">
                                            <p>Restrictions</p>
                                        </div>

                                        <div id="wrapper6" class="wrapper">
                                            <p id="TimeToDegreeLabel">Time To Degree</p>
                                            <select>
                                                <option>Time to Degree</option>
                                            </select>
                                        </div>


                                        <div id="wrapper7" class="wrapper">
                                            <p id="GraduateP">Undergraduate to <br>Graduate<br> Advancement</p>

                                            <div id="yesnoWrapper">
                                                <input id="yesGradR "type="radio" name="desicion" value="yes"><p id="yes">Yes</p>
                                                <input id="noGradR" type="radio" name="desicion" value="no"><p id="no">No</p>
                                            </div>

                                        </div>
                                    </div>



                                    <div id="ResultView" class="box">

                                        <div id="boxheaderP" class="boxheader">
                                            <p>View</p>
                                        </div>
                                    </div>


                                    <div id="buttonWrapper">
                                        <button>Download Result</button>
                                        <button>Cancel</button>
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

