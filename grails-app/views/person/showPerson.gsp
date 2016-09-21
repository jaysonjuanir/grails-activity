<%@ page import="grailsperson.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Show Person</title>
	</head>
	<body>
		<h1>Personal Information</h1>
		<div>First Name: ${person.name.firstName}</div>
		<div>Middle Name: ${person.name.middleName}</div>
		<div>Last Name: ${person.name.lastName}</div>
		<br/>
		<h3>Address</h3>
		<div>Street Name: ${person.address.streetName}</div>
		<div>Barangay: ${person.address.barangay}</div>
		<div>City: ${person.address.city}</div>
		<h3>Birthday</h3>
		<div><g:formatDate format="MMMM dd, yyyy" date="${person.birthday}"/></div>
		<br/>
		<div>
			<form method="get">
				<g:hiddenField name="id" value="${person.id}" />
				<g:actionSubmit action="editPerson" value="Edit This Person"/>
			</form>
		</div>
		<div>
			<form method="post">
				<g:hiddenField name="id" value="${person.id}" />
				<g:actionSubmit action="deletePerson" value="Delete This Person"/>
			</form>
		</div>
		<div>
			<form method="get">
				<g:hiddenField name="id" value="${person.id}" />
				<g:actionSubmit action="viewContactPerson" value="View Contact of this Person"/>
			</form>
		</div>
		<div>
			<form method="get">
				<g:hiddenField name="id" value="${person.id}" />
				<g:actionSubmit action="viewRolesPerson" value="View Role of this Person"/>
			</form>
		</div>
		
		<g:link action="listPerson" >Back to Lists</g:link>
	</body>
</html>
