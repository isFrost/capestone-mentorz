<%--
  Created by IntelliJ IDEA.
  User: isend
  Date: 9/5/2015
  Time: 6:32 PM
--%>

<%@ page import="mentorz.StartController" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main">
    <title>MentorZ</title>
</head>
<body>

<g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
</g:if>

<!--Navigation-->
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
                                <li><a href="#"><img src="${assetPath(src: 'Russia.png')}" alt="RUS"> RUS</a></li>
                                <li><a href="#"><img src="${assetPath(src: 'uk.png')}" alt="ENG"> ENG</a></li>
                            </ul>
                        </li>
                    </ul>
                    <g:form role="form" method="post" class="navbar-form navbar-right" id="login-form">
                        <div class="form-group">
                            <label class="control-label wrong-input" for="login" hidden>Invalid input.</label>
                            <label class="control-label" for="login" hidden>This field is required.</label>
                            <input id="login" name="login" type="text" class="form-control login" placeholder="E-mail / User Name" value=""/>
                        </div>
                        <div class="form-group">
                            <label class="control-label wrong-input" for="pass" hidden>Invalid input.</label>
                            <label class="control-label" for="pass" hidden>This field is required.</label>
                            <input id="pass" name="pass" type="password" class="form-control pass" placeholder="Password" value=""/>
                        </div>
                        <button type="submit" name="_action_validate" class="btn btn-default login-btn" id="login-btn">
                            <i class="fa fa-sign-in"></i> Sign In
                        </button>
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#reg-modal" id="call-reg-btn">
                            <i class="fa fa-user-plus"></i> Sign Up
                        </button>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>

<!--Slider-->
<div class="carousel slide" id="mentor-slides">
    <!--Slide indicators-->
    <ol class="carousel-indicators">
        <li class="active" data-target="#mentor-slides" data-slide-to="0"></li>
        <li data-target="#mentor-slides" data-slide-to="1"></li>
        <li data-target="#mentor-slides" data-slide-to="2"></li>
    </ol>

    <!--Slides-->
    <div class="carousel-inner">
        <div class="item active">
            <img src="${assetPath(src: 'slide1.jpg')}" alt="Organization">
            <div class="carousel-caption">
                <h3>Organization</h3>
                <p class="inverse">Mentor Virtual Clasroom provides group work as well as individual learning.</p>
            </div>
        </div>
        <div class="item">
            <img src="${assetPath(src: 'slide2.jpg')}" alt="Communication">
            <div class="carousel-caption">
                <h3>Communication</h3>
                <p>Tutors and their students can easily communicate throgh mentor's message system.</p>
            </div>
        </div>
        <div class="item">
            <img src="${assetPath(src: 'slide3.jpg')}" alt="Evaluation">
            <div class="carousel-caption">
                <h3>Evaluation</h3>
                <p>It is easy to observe one's progress via Mentor's Evaluation Graph.</p>
            </div>
        </div>
    </div>
    <!--Slide controls-->
    <a href="#mentor-slides" class="carousel-control left" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a href="#mentor-slides" class="carousel-control right" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>
<!--Service description-->
<div class="container-fluid" id="content">
    <!--For Tutor-->
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
        <div class="row">
            <p class="text-center"><h2 class="text-center">Tutor</h2></p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/tutor-info1.jpg')}" alt="Tutor">
            <p class="text-center">You can arrange your students into groups or work with each one individually.</p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/tutor-info2.jpg')}" alt="Message">
            <p class="text-center">You can easily communicate with your students by posting a message, just like in your favourite social networks.</p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/tutor-info3.jpg')}" alt="Materials">
            <p class="text-center">You can provide your students with all necessary materials such as videos, presentations, graphics, etc.</p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/tutor-info4.jpg')}" alt="Testing">
            <p class="text-center">You can check the progress your students have made by creating your own tests and arrangin tasks.</p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/tutor-info5.jpg')}" alt="Progress">
            <p class="text-center">Evaluate each task and view the overal progress of your students. Observe the results of your work in real time.</p>
        </div>
    </div>
    <!--For Student-->
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
        <div class="row">
            <p class="text-center"><h2 class="text-center">Student</h2></p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/stud-info1.jpg')}" alt="Student">
            <p class="text-center">Mentor provides you the ability to learn across distances.</p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/stud-info2.jpg')}" alt="Message">
            <p class="text-center">Stay in tauch with your mentor. Ask questions. Submit tasks. Do tests.</p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/stud-info3.jpg')}" alt="Materials">
            <p class="text-center">Get easy access to learning materials as well as mentor's help.</p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/stud-info4.jpg')}" alt="Testing">
            <p class="text-center">Test your knowledge. Don't wait for a long time. Immidiate result.</p>
        </div>
        <div class="row">
            <img class="img-circle img-responsive center-block" src="${assetPath(src: 'graphics/stud-info5.jpg')}" alt="Progress">
            <p class="text-center">Get your hand on pulse of your learning. You can observe your progress in real time.</p>
        </div>
    </div>
</div>

<!--Modal Registration Form-->
<div class="modal  fade" id="reg-modal" backdrop="static">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button class="btn close" type="button" data-dismiss="modal">
                    <i class="fa fa-close"></i>
                </button>
                <h4>Registration</h4>
            </div>
            <div class="modal-body">
                <!--Two forms: Tutor and Student-->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-9 col-sm-9 col-xs-12">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab-1" data-toggle="tab">Student</a></li>
                                <li><a href="#tab-2" data-toggle="tab">Tutor</a></li>
                            </ul>
                            <div class="tab-content">
                                <!--Student registration-->
                                <div class="tab-pane fade in active" id="tab-1">
                                    <form action="" id="stud-form">
                                        <div class="form-group">
                                            <label class="control-label" for="s-name" hidden>This field is required.</label>
                                            <input type="text" class="form-control" placeholder="Name" value="" id="s-name">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="sex" hidden>Please, choose your gender.</label>
                                            <select class="selectpicker form-control" name="gender" id="sex" required>
                                                <option value="0" style="color: grey" selected>Gender</option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label invalid-email" for="s-mail" hidden>Invalid e-mail input.</label>
                                            <label class="control-label" id="wrong group" for="s-mail" hidden>Wrong group code.</label>
                                            <label class="control-label" for="s-mail" hidden>This field is required.</label>
                                            <input type="text" class="form-control email" placeholder="E-Mail" value="" id="s-mail">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="group" hidden>This field is required.</label>
                                            <input type="text" class="form-control" placeholder="Group Code" value="" id="group">
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <label class="control-label wrong-input" for="s-user" hidden>Invalid input.</label>
                                            <label class="control-label" for="s-user" hidden>This field is required.</label>
                                            <input type="text" class="form-control login" placeholder="User Name" value="" id="s-user">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label wrong-input" for="s-reg-pass" hidden>Invalid input.</label>
                                            <label class="control-label good-pass" for="s-reg-pass" hidden>Good password.</label>
                                            <label class="control-label bad-pass" for="s-reg-pass" hidden>Bad password.</label>
                                            <label class="control-label" for="s-reg-pass" hidden>This field is required.</label>
                                            <input type="password" class="form-control pass" placeholder="Password" value="" id="s-reg-pass">
                                        </div>
                                        <button class="btn btn-default" id="sreg-btn">Sign Up</button>
                                    </form>
                                </div>
                                <!--Tutor registration-->
                                <div class="tab-pane fade" id="tab-2">
                                    <form action="" id="tut-form">
                                        <div class="form-group">
                                            <label class="control-label" for="t-name" hidden>This field is required.</label>
                                            <input type="text" class="form-control" placeholder="Name" value="" id="t-name">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="tsex" hidden>Please, choose your gender.</label>
                                            <select class="selectpicker form-control" name="Gender" id="tsex">
                                                <option value="0" style="color: grey">Gender</option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label invalid-email" for="t-mail" hidden>Invalid e-mail input.</label>
                                            <label class="control-label" for="t-mail" hidden>This field is required.</label>
                                            <input type="text" class="form-control email" placeholder="E-Mail" value="" id="t-mail">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="org" hidden id="l2">This field is required.</label>
                                            <input type="text" class="form-control" placeholder="Organization" value="" id="org">
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <label class="control-label wrong-input" for="t-user" hidden>Invalid input.</label>
                                            <label class="control-label" for="t-user" hidden>This field is required.</label>
                                            <input type="text" class="form-control login" placeholder="User Name" value="" id="t-user">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label wrong-input" for="t-reg-pass" hidden>Invalid input.</label>
                                            <label class="control-label good-pass" for="t-reg-pass" hidden>Good password.</label>
                                            <label class="control-label bad-pass" for="t-reg-pass" hidden>Bad password.</label>
                                            <label class="control-label" for="t-reg-pass" hidden>This field is required.</label>
                                            <input type="password" class="form-control pass" placeholder="Password" value="" id="t-reg-pass">
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-default" id="treg-btn">Sign Up</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
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