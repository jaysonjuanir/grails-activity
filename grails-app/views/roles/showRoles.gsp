
<%@ page import="grailsperson.Roles" %>
<!DOCTYPE html>
<html>
	<head>
		
		
		<title>List of Roles</title>
	</head>
	<body>
		<h4>${message}</h4>
        <table border="solid">
            <thead>
                <tr>
					<th>ID</th>
                    <th>Roles</th>
					<th>GET</th>
					<th>POST</th>
					<th>DELETE</th>
                </tr>
            </thead>
            <tbody>
				<!--<tr th:each="role : ${roles}">
					<td th:text="${{role.getId()}}">ID HERE</td>
					<td th:text="${{role.getRole_type()}}">Roles HERE</td>
					<td>
						<form action="#" th:action="@{/ViewRoles}" method="get">
							<input type="hidden" name="roleId" value="" th:value="${{role.getId()}}" />
							<button type= "submit" name="action" th:value="test">test this</button>
						</form>
					</td>
					<td>
						<form action="#" th:action="@{/ViewRoles}" method="POST">
							<input type="hidden" name="roleId" value="" th:value="${{role.getId()}}" />
							<button type= "submit" name="action" th:value="test">test this</button>
						</form>
					</td>
				</tr>
				-->
				<g:each in="${roles}" var="role">
					<tr>
						<td>${role.id}</td>
						<td>${role.roleType}</td>
						<td>
							<form method="get">
								<g:hiddenField name="id" value="${role.id}" />
								<g:actionSubmit action="editRole" value="Edit This Role"/>
							</form>
							<!--<g:link action="editRole" id="${role.id}">Edit</g:link><br />-->
						</td>
						<td>
							<form method="post">
								<g:hiddenField name="id" value="${role.id}" />
								<g:actionSubmit action="editRole" value="Edit This Role"/>
							</form>
						</td>
						<td>
							<form method="get">
								<g:hiddenField name="id" value="${role.id}" />
								<g:actionSubmit action="deleteRole" value="Delete This Role"/>
							</form>
						</td>
					</tr>
				</g:each>
			</tbody>
        </table><br/>
		
		<g:link action="createRole" class="back">Create Role</g:link>
		<g:link controller="person" action="hello" class="qwe">Hello</g:link>
	</body>
</html>
