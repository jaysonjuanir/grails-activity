package grailsperson

class PersonController {
	
    def index() { 
		redirect action: "listPerson"
	}
	
	def createPerson = {}
	
	def savePerson = {
		def name = new Name()
		def address = new Address()
		def person = new Person()
		name.with{
			firstName = params.firstName
			middleName = params.middleName
			lastName = params.lastName
		}
		address.with{
			streetName = params.streetName
			barangay = params.streetName
			city = params.city
		}
		person.name = name;
		person.address = address
		person.birthday = params.birthday
		person.save flush:true, failOnError:true
		//redirect action: "hello", message: "Sucessfully Saved"
		redirect action: "showPerson", message: "Sucessfully Saved", id:person.id
	}
	
	def editPerson = {
		def person = Person.get(params.id)
		[person:person]
	}
	
	def updatePerson = {
		def name = new Name()
		def address = new Address()
		def person = Person.get(params.id)
		name.with{
			firstName = params.firstName
			middleName = params.middleName
			lastName = params.lastName
		}
		address.with{
			streetName = params.streetName
			barangay = params.streetName
			city = params.city
		}
		person.name = name;
		person.address = address
		person.birthday = params.birthday
		person.save flush:true, failOnError:true
		//redirect action: "hello", message: "Sucessfully Saved"
		redirect action: "showPerson", message: "Sucessfully Saved", id:person.id
	}
	
	def listPerson = {
		def people = Person.list()
		[people:people]
	}
	
	def showPerson = {
		def person = Person.get(params.id)
		[person:person]
	}
	
	def deletePerson = {
		def person = Person.get(params.id)
		person.delete flush:true, failOnError:true
		redirect action: "index"
	}
	
	def hello = {
		render "Hello world"
	}
	
	def viewContactPerson = {
		def person = Person.get(params.id)
		def contact = Contact.findAllByPerson(person)
		[contacts:contact, id:person.id]
	}
	def createContact = {
		[id:params.id]
	}
	def editContact = {
		def contact = Contact.get(params.contactId)
		[contact:contact, id:params.id]
	}
	def saveContact = {
		def person1 = Person.get(params.id)
		def contact = new Contact()
		contact.with{
			contactType = params.contactType
			contactValue = params.contactValue
			person = person1;
		}
		contact.save flush:true, failOnError:true
		redirect action: "viewContactPerson", id:person1.id
	}
	def updateContact = {
		def person1 = Person.get(params.id)
		def contact = Contact.get(params.contactId)
		contact.with{
			contactType = params.contactType
			contactValue = params.contactValue
			person = person1
		}
		contact.save flush:true, failOnError:true
		redirect action: "viewContactPerson", id:person1.id
	}
	def deleteContact={
		def person = Person.get(params.id)
		def contact = Contact.get(params.contactId)
		contact.delete flush:true, failOnError:true
		redirect action: "viewContactPerson", id: person.id
	}
	
	def viewRolesPerson = {
		def person = Person.get(params.id)
		def roles = person.roles
		[roles:roles, id:person.id]
	}
	
	def createRole = {
		def roles = Roles.list()
		def personRoles = Person.get(params.id).roles
		roles.removeAll(personRoles)
		print(roles)
		[roles:roles, id: params.id]
	}
	
	def saveRole = {
		def person = Person.get(params.id)
		def role = Roles.get(params.roleId)
		def roles = person.roles
		roles.add(role)
		person.roles=roles
		
		person.save flush:true, failOnError:true
		redirect action: "viewRolesPerson", id:person.id
	}
	
	def deleteRole = {
		def person = Person.get(params.id)
		
		def personRole = person.roles
		personRole.remove(Roles.get(params.roleId))
		
		person.with{
			roles=personRole
		}
		person.save flush:true, failOnError:true
		redirect action: "viewRolesPerson", id:params.id
	}
}
