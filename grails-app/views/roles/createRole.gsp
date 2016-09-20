<%@ page import="grailsperson.Roles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Create Role</title>
	</head>
	<body>
		<h1>Create new Role</h1>
		<g:form >
			Enter new Role: <g:textField name = "roleType"/><br/>
			<g:actionSubmit action = "saveRole" value = "Create"/>
		</g:form>
	</body>
</html>
