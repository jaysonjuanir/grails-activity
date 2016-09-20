package grailsperson

class Contact {
	String contactType
	String contactValue
	
	static belongsTo = [person:Person]
	
	static constraints = {
    }
}
