<%@ page import="mentorz.MentorUser" %>



<div class="fieldcontain ${hasErrors(bean: mentorUserInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="mentorUser.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" maxlength="25" required="" value="${mentorUserInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mentorUserInstance, field: 'pass', 'error')} required">
	<label for="pass">
		<g:message code="mentorUser.pass.label" default="Pass" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pass" required="" value="${mentorUserInstance?.pass}"/>

</div>

