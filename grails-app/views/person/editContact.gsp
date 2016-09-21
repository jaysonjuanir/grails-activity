<%@ page import="grailsperson.Roles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Edit Contact</title>
	</head>
	<body>
		<h1>Edit Contact</h1>
		<g:form >
			<g:hiddenField name="id" value="${id}" />
			<g:hiddenField name="contactId" value="${contact.id}" />
			Contact Type: <g:textField name = "contactType" value = "${contact.contactType}"/><br/>
			Contact Value: <g:textField name = "contactValue" value = "${contact.contactValue}"/><br/>
			<g:actionSubmit action = "updateContact" value = "Save"/>
			<g:actionSubmit action = "viewContactPerson" value = "Back"/>
		</g:form>
	</body>
</html>
