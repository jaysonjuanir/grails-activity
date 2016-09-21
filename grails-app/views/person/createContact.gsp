<%@ page import="grailsperson.Roles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Create Contact</title>
	</head>
	<body>
		<h1>Create new Contact</h1>
		<g:form >
			<g:hiddenField name="id" value="${id}" />
			Contact Type: <g:textField name = "contactType"/><br/>
			Contact Value: <g:textField name = "contactValue"/><br/>
			<g:actionSubmit action = "saveContact" value = "Create"/>
			<g:actionSubmit action = "viewContactPerson" value = "Back"/>
		</g:form>
	</body>
</html>
