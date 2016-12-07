
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

                            <div id="DetailedResourcesContainer">

                                <p id="DetailedReportHeader">
                                    Initiative Detailed View
                                </p>

                                <div id="ProjectInformation" class="box">
                                    <div id="boxheaderP" class="boxheader">
                                        <p>Initiative Information</p>
                                    </div>

                                    <p id="PITitleLabel" class="PIlabels">*Tittle</p>
                                    <p id="PIDescription" class="PIlabels">*Description</p>
                                    <p id="PIGoals" class="PIlabels">Goal(s)</p>
                                    <p id="PIDocType" class="PIlabels">Document Type</p>
                                    <p id="PIWebsite" class="PIlabels">Website</p>
                                    <p id="PIStartDate" class="PIlabels">*Start Date</p>
                                    <p id="PIEndDate" class="PIlabels">End Date</p>
                                    <p id="PIKeywords" class="PIlabels">Keywords</p>
                                    <p id="PIObjective" class="PIlabels">Objective(s)</p>

                                    <input type="text" id="PITitleText" placeholder="Title" class="PDVText">
                                    <input type="text" id="StartDateText" placeholder= "Start Date" class="PDVText">
                                    <input type="text" id="EndDateText" placeholder= "End Date" class="PDVText">
                                    <input type="text" id="PIDescText" placeholder="Description" class="PDVText">
                                    <input type="text" id="PIGoalsText" placeholder="Goals" class="PDVText">
                                    <input type="text" id="PIKeywordsText" placeholder="Keywords" class="PDVText">
                                    <select id="documentTypeSelector" >
                                        <option>Type</option>
                                    </select>
                                    <input type="text" id="documentTypeAttachment" placeholder="Attachment/Link" class="PDVText">
                                    <input type="text" id="ObjectiveText" placeholder= "Objective" class="PDVText">
                                    <input type="text" id="WebsiteText" placeholder= "Website" class="PDVText">
                                    <img src="../images/plusIcon.png" class="plusIcon" id="PlusIcon1" onclick="alert('Choose a Keyword');" style="width:20px;height:20px;">
                                    <img src="../images/plusIcon.png" class="plusIcon" id="PlusIcon2" onclick="alert('Choose an Objective');"style="width:20px;height:20px;">
                                    <img src="../images/plusIcon.png" class="plusIcon" id="PlusIcon3" onclick="alert('Choose an Attachment');"style="width:20px;height:20px;">
                                    <img src="../images/plusIcon.png" class="plusIcon" id="PlusIcon4" onclick="alert('Choose a Website');"style="width:20px;height:20px;">
                                    <img src="../images/plusIcon.png" class="plusIcon" id="PlusIcon5" onclick="alert('Choose a Goals');"style="width:20px;height:20px;">

                                </div>


                                <div id="detailedviewButtonWrapper">
                                    <button>Save</button>
                                    <button>Save and Return</button>
                                    <button>Delete</button>
                                    <button onclick="document.location='projectDetailedView.jsp'">Cancel</button>

                                </div>


                                <div id="ProjectMembershipBox" class="box">
                                    <div id="boxheaderP" class="boxheader">
                                        <p>Initiative Membership</p>
                                    </div>

                                    <table id="membershipTable">
                                        <tbody>
                                            <tr>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Role</th>
                                                <th>Action</th>
                                            </tr>
                                            <tr>
                                                <td><input type="text" placeholder="Search by Name" value=""></td>
                                                <td><input type="text" placeholder="Search by Email" value=""></td>
                                                <td id="cellSelector" >
                                                    <select id="roleSelector">
                                                        <option value="role">Role</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <img src="../images/xIcon.png" class="xIcon" id="xIcon" onclick="alert('Delete?');"style="width:20px;height:20px;">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <button id="membershipButton">Add Membership</button>

                                </div>




                                <div id="InitiativesAssociatedWithProjectBox" class="box">
                                    <div id="boxheaderP" class="boxheader">
                                        <p>Activities Associated with Project</p>
                                    </div>

                                    <table id="InitiativesTable" class="detailedViewTable">
                                        <tbody>
                                            <tr>
                                                <th>Title</th>
                                                <th>Description</th>
                                                <th>Creation Date</th>
                                                <th>Linked Activity</th>
                                                <th>Owner</th>
                                            </tr>
                                            <tr>
                                                <td><a href="activityDetailedView.jsp">Activity Title 1</a> </td>
                                                <td>Description 1</td>
                                                <td>MM-DD-YYY</td>
                                                <td>No</td>
                                                <td><a href="activityDetailedView.jsp">Owner A</a></td>
                                            </tr>

                                            <tr>
                                                <td><a href="activityDetailedView.jsp">Activity Title 2</a> </td>
                                                <td>Description 2</td>
                                                <td>MM-DD-YYY</td>
                                                <td>Yes</td>
                                                <td><a href="/somelink">Owner A</a></td>
                                            </tr>


                                            <tr>
                                                <td><a href="activityDetailedView.jsp">Activity Title 3</a> </td>
                                                <td>Description 3</td>
                                                <td>MM-DD-YYY</td>
                                                <td>No</td>
                                                <td><a href="/somelink">Owner A</a></td>
                                            </tr>

                                        </tbody>
                                    </table>

                                    <button id="InitiativeButton">Add Activity</button>
                                    <button id="LinkInitiativeButton"onclick="document.location = 'linkExistingActivity.jsp'">Link Existing Activity</button>

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

