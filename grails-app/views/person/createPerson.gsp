<%@ page import="grailsperson.Roles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Create Role</title>
	</head>
	<body>
		<h1>Create new Role</h1>
		<g:form >
			First Name: <g:textField name = "firstName"/><br/>
			Middle Name: <g:textField name = "middleName"/><br/>
			Last Name: <g:textField name = "lastName"/><br/>
			<br/>
			Street Name: <g:textField name = "streetName"/><br/>
			Barangay: <g:textField name = "barangay"/><br/>
			City: <g:textField name = "city"/><br/>
			<br/>
			Birthday: <g:datePicker name="birthday" value="${new Date()}" precision="day" years="${1970..2016}"/><br/>
			<g:actionSubmit action = "savePerson" value = "Create"/>
			<g:actionSubmit action = "index" value = "Back"/>
		</g:form>
	</body>
</html>
