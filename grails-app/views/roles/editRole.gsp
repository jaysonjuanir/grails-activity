<%@ page import="grailsperson.Roles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Edit Role</title>
	</head>
	<body>
		<h2>Edit Role</h2>
		<g:form >
			<g:hiddenField name="id" value="${role.id}" />
			Edit Role: <g:textField name = "roleType" value = "${role.roleType}"/><br/>
			<g:actionSubmit action = "updateRole" value = "Save"/>
		</g:form>
	</body>
</html>
