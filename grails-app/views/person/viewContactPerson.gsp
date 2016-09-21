<%@ page import="grailsperson.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<title>List Contact</title>
	</head>
	<body>
		<g:link action="index" >Home</g:link>
		<br/>
		<g:link action="createContact" params = "[id:"${id}"]">Create Contact</g:link>
		<table border="solid">
			<thead>
				<tr>
					<th>ID</th>
					<th>Contact Type</th>
					<th>Contact Value</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${contacts}" var="contact">
					<tr>
					<td>${contact.id}</td>
					<td>${contact.contactType}</td>
					<td>${contact.contactValue}</td>
					<td>
						<div>
							<g:link action="editContact" params = "[contactId:"${contact.id}", id:"${id}"]">Edit this contact</g:link>
						</div>
					</td>
					<td>
						<div>
							<g:link action="deleteContact" params = "[contactId:"${contact.id}", id:"${id}"]">Delete this contact</g:link>
						</div>
					</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</body>
</html>
