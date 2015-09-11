<%@ page import="mentorz.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="course.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${courseInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'groups', 'error')} ">
	<label for="groups">
		<g:message code="course.groups.label" default="Groups" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.groups?}" var="g">
    <li><g:link controller="mentorGroup" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mentorGroup" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mentorGroup.label', default: 'MentorGroup')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="course.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tutor" name="tutor.id" from="${mentorz.Tutor.list()}" optionKey="id" required="" value="${courseInstance?.tutor?.id}" class="many-to-one"/>

</div>

