
<%@ page import="mentorz.MentorGroup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mentorGroup.label', default: 'MentorGroup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mentorGroup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mentorGroup" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mentorGroup">
			
				<g:if test="${mentorGroupInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="mentorGroup.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${mentorGroupInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mentorGroupInstance?.groupCode}">
				<li class="fieldcontain">
					<span id="groupCode-label" class="property-label"><g:message code="mentorGroup.groupCode.label" default="Group Code" /></span>
					
						<span class="property-value" aria-labelledby="groupCode-label"><g:fieldValue bean="${mentorGroupInstance}" field="groupCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mentorGroupInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="mentorGroup.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${mentorGroupInstance?.course?.id}">${mentorGroupInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${mentorGroupInstance?.students}">
				<li class="fieldcontain">
					<span id="students-label" class="property-label"><g:message code="mentorGroup.students.label" default="Students" /></span>
					
						<g:each in="${mentorGroupInstance.students}" var="s">
						<span class="property-value" aria-labelledby="students-label"><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mentorGroupInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mentorGroupInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
