package grailsperson

class Person {
	Name name
	Address address
	Date birthday
    static constraints = {
    }
	static embedded = ['name', 'address']
	static hasMany = [contact:Contact, roles:Roles]
	static mapping = {
        roles joinTable: [name: "person_roles", column: "role_id", key: 'person_id' ]
    }
}
class Name { 
	String firstName
	String middleName
	String lastName
    static constraints = {
		firstName nullable:false
		middleName nullable:false
		lastName nullable:false
    }
}

class Address {
	String streetName
	String barangay
	String city
    static constraints = {
		streetName nullable: false
		barangay nullable: false
		city nullable:false
    }
}