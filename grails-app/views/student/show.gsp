
<%@ page import="mentorz.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="student.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${studentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="student.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:formatBoolean boolean="${studentInstance?.sex}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.mail}">
				<li class="fieldcontain">
					<span id="mail-label" class="property-label"><g:message code="student.mail.label" default="Mail" /></span>
					
						<span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${studentInstance}" field="mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.group}">
				<li class="fieldcontain">
					<span id="group-label" class="property-label"><g:message code="student.group.label" default="Group" /></span>
					
						<span class="property-value" aria-labelledby="group-label"><g:link controller="mentorGroup" action="show" id="${studentInstance?.group?.id}">${studentInstance?.group?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.messages}">
				<li class="fieldcontain">
					<span id="messages-label" class="property-label"><g:message code="student.messages.label" default="Messages" /></span>
					
						<g:each in="${studentInstance.messages}" var="m">
						<span class="property-value" aria-labelledby="messages-label"><g:link controller="message" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.tasks}">
				<li class="fieldcontain">
					<span id="tasks-label" class="property-label"><g:message code="student.tasks.label" default="Tasks" /></span>
					
						<g:each in="${studentInstance.tasks}" var="t">
						<span class="property-value" aria-labelledby="tasks-label"><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.tests}">
				<li class="fieldcontain">
					<span id="tests-label" class="property-label"><g:message code="student.tests.label" default="Tests" /></span>
					
						<g:each in="${studentInstance.tests}" var="t">
						<span class="property-value" aria-labelledby="tests-label"><g:link controller="test" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="student.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="mentorUser" action="show" id="${studentInstance?.user?.id}">${studentInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
