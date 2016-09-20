<%@ page import="grailsperson.Person" %>


<fieldset class="embedded"><legend><g:message code="person.address.label" default="Address" /></legend>
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address.barangay', 'error')} required">
	<label for="address.barangay">
		<g:message code="person.address.barangay.label" default="Barangay" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barangay" required="" value="${addressInstance?.barangay}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address.city', 'error')} required">
	<label for="address.city">
		<g:message code="person.address.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${addressInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address.id', 'error')} required">
	<label for="address.id">
		<g:message code="person.address.id.label" default="Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="id" type="number" value="${addressInstance.id}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address.streetName', 'error')} required">
	<label for="address.streetName">
		<g:message code="person.address.streetName.label" default="Street Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="streetName" required="" value="${addressInstance?.streetName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'address.version', 'error')} required">
	<label for="address.version">
		<g:message code="person.address.version.label" default="Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="version" type="number" value="${addressInstance.version}" required=""/>

</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'birthday', 'error')} required">
	<label for="birthday">
		<g:message code="person.birthday.label" default="Birthday" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthday" precision="day"  value="${personInstance?.birthday}"  />

</div>
<fieldset class="embedded"><legend><g:message code="person.name.label" default="Name" /></legend>
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name.firstName', 'error')} required">
	<label for="name.firstName">
		<g:message code="person.name.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${nameInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name.id', 'error')} required">
	<label for="name.id">
		<g:message code="person.name.id.label" default="Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="id" type="number" value="${nameInstance.id}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name.lastName', 'error')} required">
	<label for="name.lastName">
		<g:message code="person.name.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${nameInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name.middleName', 'error')} required">
	<label for="name.middleName">
		<g:message code="person.name.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${nameInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name.version', 'error')} required">
	<label for="name.version">
		<g:message code="person.name.version.label" default="Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="version" type="number" value="${nameInstance.version}" required=""/>

</div>
</fieldset>
