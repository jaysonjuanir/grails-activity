<%@ page import="grailsperson.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<title>List Roles</title>
	</head>
	<body>
		<g:link action="index" >Home</g:link>
		<br/>
		<g:link action="createRole" params = "[id:"${id}"]">Add Role</g:link>
		<table border="solid">
			<thead>
				<tr>
					<th>ID</th>
					<th>Role Type</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${roles}" var="role">
					<tr>
					<td>${role.id}</td>
					<td>${role.roleType}</td>
					
					<td>
						<div>
							<g:link action="deleteRole" params = "[roleId:"${role.id}", id:"${id}"]">Delete this role</g:link>
						</div>
					</td>
					</tr>
				</g:each>
				
			</tbody>
			
		</table>
		<g:if test="${roles.isEmpty()}"><h2>EMPTY</h2></g:if>
	</body>
</html>
