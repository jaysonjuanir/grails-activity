<%@ page import="grailsperson.Roles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Edit this Person</title>
	</head>
	<body>
		<h1>Edit this Person</h1>
		<g:form >
			<g:hiddenField name="id" value="${person.id}" />
			First Name: <g:textField name = "firstName" value = "${person.name.firstName}"/><br/>
			Middle Name: <g:textField name = "middleName" value = "${person.name.middleName}"/><br/>
			Last Name: <g:textField name = "lastName" value = "${person.name.lastName}"/><br/>
			<br/>
			Street Name: <g:textField name = "streetName" value = "${person.address.streetName}"/><br/>
			Barangay: <g:textField name = "barangay" value = "${person.address.barangay}"/><br/>
			City: <g:textField name = "city" value = "${person.address.city}"/><br/>
			<br/>
			Birthday: <g:datePicker name="birthday" value="${person.birthday}" precision="day" years="${1970..2016}"/><br/>
			<g:actionSubmit action = "updatePerson" value = "Update"/>
			<g:actionSubmit action = "index" value = "Back"/>
		</g:form>
	</body>
</html>
