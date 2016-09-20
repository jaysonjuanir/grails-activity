<%@ page import="grailsperson.Roles" %>



<div class="fieldcontain ${hasErrors(bean: rolesInstance, field: 'roleType', 'error')} required">
	<label for="roleType">
		<g:message code="roles.roleType.label" default="Role Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roleType" required="" value="${rolesInstance?.roleType}"/>

</div>

