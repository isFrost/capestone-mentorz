<%@ page import="mentorz.Tutor; mentorz.Student; mentorz.StudPaneController" %>

<g:each in="${messageList}" var="m">
   <div class="container mess">
       <hr>
       <div class="row">
           ${m.getText()}
       </div>
       <div class="row">
           <div class="col-lg-10">
               ${m.getDate()}
               From: ${mentorz.Tutor.findByUser(m.getSender()).getName()}
           </div>
           <div class="col-lg-2">
               <div class="navbar">
                  <ul class="nav">
                      <li>
                          <a href="" data-toggle="modal" data-target="#reply-modal">Reply</a>
                      </li>
                  </ul>
               </div>
           </div>
       </div>
       <hr>
       <div class="row">
           <div class="col-lg-2">

           </div>
           <div class="col-lg-10">
               <g:if test="${m.getReply() != null}">
                   <div class="container reply">
                       <div class="row">
                           <g:set var="r" value="${m.getReply()}"></g:set>
                           ${m.getReply().getText()}
                       </div>
                       <div class="row">
                           <div class="col-lg-2"></div>
                           <div class="col-lg-5">
                               ${m.getDate()}
                               From: ${mentorz.Student.findByUser(r.getSender()).getName()}
                           </div>
                           <div class="col-lg-3">
                               <div class="navbar">
                                   <ul class="nav">
                                       <li>
                                           <a href="" data-toggle="modal" data-target="#edit-modal">Edit</a>
                                       </li>
                                   </ul>
                               </div>
                           </div>
                       </div>
                   </div>
               </g:if>
           </div>
       </div>
   </div>
</g:each>