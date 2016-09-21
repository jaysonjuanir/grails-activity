<%@ page import="grailsperson.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<title>List Person</title>
	</head>
	<body>
		<g:link action="createPerson">Create Person</g:link>
		<table border="solid">
			<thead>
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Middle Name</th>
					<th>Last Name</th>
					<th>Stdeet Name</th>
					<th>Barangay</th>
					<th>City</th>
					<th>Birthday</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${people}" var="person">
					<tr>
					<td>${person.id}</td>
					<td>${person.name.firstName}</td>
					<td>${person.name.middleName}</td>
					<td>${person.name.lastName}</td>
					<td>${person.address.streetName}</td>
					<td>${person.address.barangay}</td>
					<td>${person.address.city}</td>
					<td>${person.birthday}</td>
					<td>
						<div>
							<!--<form method="post">
								<g:hiddenField name="id" value="${person.id}" />
								<g:actionSubmit action="showPerson" value="View This Person"/>
							</form>-->
							<g:link action="showPerson" params = "[id:"${person.id}"]">View this person</g:link>
						</div>
					</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</body>
</html>
