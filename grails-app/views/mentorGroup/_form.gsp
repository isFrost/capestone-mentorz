<%@ page import="mentorz.MentorGroup" %>



<div class="fieldcontain ${hasErrors(bean: mentorGroupInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="mentorGroup.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${mentorGroupInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mentorGroupInstance, field: 'groupCode', 'error')} required">
	<label for="groupCode">
		<g:message code="mentorGroup.groupCode.label" default="Group Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groupCode" required="" value="${mentorGroupInstance?.groupCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mentorGroupInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="mentorGroup.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${mentorz.Course.list()}" optionKey="id" required="" value="${mentorGroupInstance?.course?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mentorGroupInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="mentorGroup.students.label" default="Students" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${mentorGroupInstance?.students?}" var="s">
    <li><g:link controller="student" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="student" action="create" params="['mentorGroup.id': mentorGroupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'student.label', default: 'Student')])}</g:link>
</li>
</ul>


</div>

