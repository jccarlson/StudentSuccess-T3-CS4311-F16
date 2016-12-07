
<!--/*This will change to fit the JSP/MVC implementation*/-->

<html>

    <head>
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Michroma" />
        <link rel="stylesheet" type="text/css" href="../css/styles.css"/>
        <link rel="stylesheet" type="text/css" href="../css/resourcesDetailedViewStyles.css"/>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="../css/jquery.datepick.css"> 
        <script type="text/javascript" src="../js/jquery.plugin.js"></script> 
        <script type="text/javascript" src="../js/jquery.datepick.js"></script>

        <script>
            $(function () {
                $(StartDateText).datepick({dateFormat: 'yyyy-mm-dd'});
            });

            $(function () {
                $(EndDateText).datepick({dateFormat: 'yyyy-mm-dd'});
            });
        </script> 

    </head>
    <body>
        <div id="mainWrapper">

            <!------------HEADER------------->
            <div id="HeaderWrapper">
                <div id="HeaderInner">
                    <div id="HeaderTextWrapper"><p id="HeaderText">Accelerating, Connecting and Evaluating Student Success</p></div>

                    <img id="AccessImage" src="../images/uteplogo.png" alt="Utep Logo" style="width:85px;height:65px;">

                    <div id="UserAndButtonWrapper">
                        <p id="UserName"> User: </p>
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

                            <div id="DetailedResourcesContainer">

                                <p id="DetailedReportHeader">
                                    Activity Detailed View
                                </p>

                                <div id="ProjectInformation" class="box">
                                    <div id="boxheaderP" class="boxheader">
                                        <p>Activity Information</p>
                                    </div>

                                    <p id="PITitleLabel" class="PIlabels">*Title</p>
                                    <p id="PIDescription" class="PIlabels">*Description</p>
                                    <p id="PIStartDate" class="PIlabels">*Start Date</p>
                                    <p id="PIKeywords2" class="PIlabels">Keywords</p>
                                    <p id="PIEndDate" class="PIlabels">*End Date</p>
                                    <p id="PIClassificationLabel" class="PIlabels">Classification</p>

                                    <input type="text" id="PITitleText" placeholder="Title" class="PDVText">
                                    <input type="text" id="StartDateText" placeholder= "Start Date" class="PDVText">
                                    <input type="text" id="PIKeywordsText2" placeholder="Keywords" class="PDVText">
                                    <input type="text" id="EndDateText" placeholder= "End Date" class="PDVText">
                                    <input type="text" id="PIDescText" placeholder="Description" class="PDVText">
                                    <input type="text" id="PIClassification" placeholder="Classification" class="PDVText">
                                    <p class="header14PBold" style="margin-top: 120px; margin-left: 10px;position: absolute">Target Audience</p>


                                    <select id="classificationSelector" >
                                        <option>Type</option>
                                    </select>

                                    <img src="../images/plusIcon.png" class="plusIcon" id="PlusIcon1" onclick="alert('Choose a Keyword');" style="width:20px;height:20px;">
                                    <img src="../images/plusIcon.png" class="plusIcon" id="PlusIcon3" onclick="alert('Choose an Attachment');"style="width:20px;height:20px; m">


                                </div>


                                <div id="detailedviewButtonWrapper">
                                    <button>Save</button>
                                    <button>Save and Return</button>
                                    <button>Delete</button>
                                    <button onclick="document.location='initiativeDetailedView.jsp'" >Cancel</button>

                                </div>


                                <div id="ProjectMembershipBox2" class="box">
                                    <div id="boxheaderP" class="boxheader">
                                        <p>Activity Course Mapping Information</p>
                                    </div>
                                    <p class="header12P" style="position:absolute;margin-left: 10px;margin-top: 50px;">Semester</p>
                                    <p class="header12P" style="position:absolute;width: 50px;margin-left: 250px;margin-top: 50px;" >CourseName</p>

                                    <select style="position: absolute;margin-top:50px; margin-left:100px;width: 130px;">
                                        <option>Semester</option>
                                    </select>
                                    <input type="text" style="position: absolute; margin-top: 48px; margin-left: 370px;" placeholder="Course Name">
                                    <img src="../images/plusIcon.png" class="plusIcon" id="PlusIcon8" onclick="alert('Choose an Attachment');"style="width:20px;height:20px; m">


                                </div>




                                <div id="InitiativesAssociatedWithProjectBox" class="box">
                                    <div id="boxheaderP" class="boxheader">
                                        <p>Activity Participant Information</p>
                                    </div>

                                    <table id="membershipTable">
                                        <tbody>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Role</th>
                                                <th>Action</th>
                                            </tr>
                                            <tr>
                                                <td><input type="text" placeholder="Search by ID" value=""></td>
                                                <td><input type="text" placeholder="Search by Name" value=""></td>
                                                <td><input type="text" placeholder="Search by Email" value=""></td>
                                                <td><select style="width: 50px;position: absolute;margin-left: -10px;margin-top: -10px;">
                                                        <option>Role</option>
                                                    </select></td>
                                                <td>
                                                    <img src="../images/xIcon.png" class="xIcon" id="xIcon" onclick="alert('Delete?');"style="width:20px;height:20px;">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <button id="LinkInitiativeButton">Add Participant</button>
                                    
                                </div>
                                <p id="requiredlabel">*Required Fields</p>

                            </div>

                        </div>

                    </div>

                </div>




            </div>


            <!---------CONTENT------------->

            <!---------FOOTER------------->
            <div id="FooterWrapper">
                <div id="footer">
                    <p> COLLABS <br></p>
                </div>
            </div>
            <!---------FOOTER------------->
        </div>


    </body>


</html>

