<%--
  Created by IntelliJ IDEA.
  User: isend
  Date: 9/5/2015
  Time: 12:13 AM
--%>

<%@ page import="mentorz.StudPaneController" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>MentorZ</title>
</head>
<body>

<!--Navigation Bar and Logo-->
<div class="navbar navbar-fixed-top navbar-inverse" id="mentor-navbar">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-10">
                <div class="navbar-header pull-left">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#mentor-menu">
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="mentor-menu">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a class="brand" href="#"><img src="${assetPath(src: 'logo.png')}" alt="Mentorz Logo" height="35" width="90"></a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">About</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Language <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><img src="${assetPath(src: 'Russia.png')}" alt=""> RUS</a></li>
                                <li><a href="#"><img src="${assetPath(src: 'uk.png')}" alt=""> ENG</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="right"><a href="#">Log Out</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Sidebar and Message List-->
<div class="container-fluid" id="work-pane">
    <div class="row">
        <!--Sidebar-->
        <div class="col-lg-2 col-md-4" id="sidebar">
            <div class="row">
                <img src="${assetPath(src: 'u.png')}" alt="User" height="200" width="200" id="user-img" class="center-block">
                <p id="user-name" class="text-center">Sam Siera</p>
                <p id="gr-or-org" class="text-center">Test Group</p>
            </div>
            <div class="row">
                <div >
                    <ul class="nav navbar nav-stacked">
                        <li><a href="#">Messages</a></li>
                        <li><a href="#">Courses</a></li>
                        <li><a href="#">Groups</a></li>
                        <li><a href="#">Tasks</a></li>
                        <li><a href="#">Tests</a></li>
                        <li><a href="#">Progress</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--Messages and Content-->
        <div class="col-lg-10 col-md-8" id="feed">

        </div>
    </div>
</div>
<!--Footer-->
<div class="navbar navbar-static-bottom">
    <p align="center">Vladimir Smolko&copy;  School of Business and Management of Technology of BSU, 2015</p>
</div>
</body>
</html>