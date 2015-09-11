<%@ page import="mentorz.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="95" required="" value="${studentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'sex', 'error')} ">
	<label for="sex">
		<g:message code="student.sex.label" default="Sex" />
		
	</label>
	<g:checkBox name="sex" value="${studentInstance?.sex}" />

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'mail', 'error')} required">
	<label for="mail">
		<g:message code="student.mail.label" default="Mail" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="mail" required="" value="${studentInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'group', 'error')} required">
	<label for="group">
		<g:message code="student.group.label" default="Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="group" name="group.id" from="${mentorz.MentorGroup.list()}" optionKey="id" required="" value="${studentInstance?.group?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'messages', 'error')} ">
	<label for="messages">
		<g:message code="student.messages.label" default="Messages" />
		
	</label>
	<g:select name="messages" from="${mentorz.Message.list()}" multiple="multiple" optionKey="id" size="5" value="${studentInstance?.messages*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="student.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'tests', 'error')} ">
	<label for="tests">
		<g:message code="student.tests.label" default="Tests" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.tests?}" var="t">
    <li><g:link controller="test" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="test" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'test.label', default: 'Test')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="student.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mentorz.MentorUser.list()}" optionKey="id" required="" value="${studentInstance?.user?.id}" class="many-to-one"/>

</div>

