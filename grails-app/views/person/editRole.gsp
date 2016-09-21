<%@ page import="grailsperson.Roles" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Edit Role</title>
	</head>
	<body>
		<h1>Edit Role</h1>
		
		<table border = "solid">
			<tr>
				<th>Roles</th>
				<th>Add</th>
			</tr>
			<g:each in="${roles}" var="role">
				<tr>
					<td>${role.roleType}</td>
					<td>
						<div>
							<g:link action="saveRole" params = "[id:"${id}"]">Delete this role</g:link>
						</div>
					</td>
				</tr>
			</g:each>
			
			<g:if test="${roles == null || roles.isEmpty()}">
				<tr><h2>EMPTY</h2></tr>
			</g:if>
		</table>
	</body>
</html>
