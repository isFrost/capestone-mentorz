<%--
  Created by IntelliJ IDEA.
  User: isend
  Date: 9/4/2015
  Time: 10:27 PM
--%>

<%@ page import="mentorz.MentorGroup; mentorz.Course; mentorz.Tutor; mentorz.Student; mentorz.StudPaneController" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>
<body>

<g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
</g:if>

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
                        <li><a href="/help.gsp">Help</a></li>
                        <li><a href="/about.gsp">About</a></li>
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
        <div class="col-lg-2 col-md-4 fixed" id="sidebar">
            <div class="row">
                <img src="${assetPath(src: 'u.png')}" alt="User" height="200" width="200" id="user-img" class="center-block">
                <g:set var="student" value="${Student.findByUser(session.user)}"/>
                <p id="user-name" class="text-center">${student.getName()}</p>
                <p id="gr-or-org" class="text-center">${student.getGroup().getName()}</p>
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
        <div class="container">
            <div class="col-lg-10 col-md-8" id="feed">
                <g:set var="messageList" value="${mentorz.Message.findAllByAddressee(session.user)}"/>
                <div class="row">
                    <g:render template="mess-bar"/>
                </div>
                <g:render template="message" bean="${messageList}"/>
            </div>
        </div>
    </div>
</div>
<!--Modal for Reply-->
<div class="modal fade" id="reply-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Reply</h4>
            </div>
            <div class="modal-body">
                <textarea name="" id="reply-mess" cols="80" rows="5"></textarea>
            </div>
            <div class="modal-footer">
                <button class="btn btn-info">Attach</button>
                <button class="btn btn-info">Send</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--Modal for edit-->
<div class="modal fade" id="edit-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Edit</h4>
            </div>
            <div class="modal-body">
                <textarea name="" id="edit-mess" cols="80" rows="5"></textarea>
            </div>
            <div class="modal-footer">
                <button class="btn btn-info">Attach</button>
                <button class="btn btn-info">Confirm</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--Modal for New Message-->
<div class="modal fade" id="new-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">New Message</h4>
            </div>
            <div class="modal-body">

                <textarea name="" id="new-mess" cols="80" rows="5"></textarea>
            </div>
            <div class="modal-footer">
                <button class="btn btn-info">Link</button>
                <button class="btn btn-info">Attach</button>
                <button class="btn btn-default">Confirm</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--Footer-->
<div class="navbar navbar-static-bottom">
    <p align="center">Vladimir Smolko&copy;  School of Business and Management of Technology of BSU, 2015</p>
</div>
</body>
</html>