
<%@ page import="mentorz.MentorGroup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mentorGroup.label', default: 'MentorGroup')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mentorGroup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mentorGroup" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'mentorGroup.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="groupCode" title="${message(code: 'mentorGroup.groupCode.label', default: 'Group Code')}" />
					
						<th><g:message code="mentorGroup.course.label" default="Course" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mentorGroupInstanceList}" status="i" var="mentorGroupInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mentorGroupInstance.id}">${fieldValue(bean: mentorGroupInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: mentorGroupInstance, field: "groupCode")}</td>
					
						<td>${fieldValue(bean: mentorGroupInstance, field: "course")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mentorGroupInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
