
<%@ page import="mentorz.MentorUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mentorUser.label', default: 'MentorUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mentorUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mentorUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mentorUser">
			
				<g:if test="${mentorUserInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="mentorUser.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${mentorUserInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mentorUserInstance?.pass}">
				<li class="fieldcontain">
					<span id="pass-label" class="property-label"><g:message code="mentorUser.pass.label" default="Pass" /></span>
					
						<span class="property-value" aria-labelledby="pass-label"><g:fieldValue bean="${mentorUserInstance}" field="pass"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mentorUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mentorUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
