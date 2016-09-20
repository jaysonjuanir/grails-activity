package grailsperson

class RolesController {

    def index = { 
		redirect action: "showRoles"
	}
	def createRole = {	}
	def saveRole = {
		def role = new Roles(params);
		role.save flush:true, failOnError:true
		redirect action: "showRoles", message: "Sucessfully Saved"
	}
	def editRole = {
		def role = Roles.get(params.id);
		[role:role]
	}
	def updateRole = {
		def role = Roles.get(params.id)
		role.properties = params;
		role.save flush:true, failOnError:true
		redirect action: "showRoles", message: "Sucessfully Updated"
	}
	def showRoles = {
		def roles = Roles.list()
		[roles:roles]
	}
	def deleteRole = {
		def role = Roles.get(params.id);
		role.delete flush:true, failOnError:true;
		redirect action: "index"
	}
	
	
}
