package roamer

class Airline {

    static constraints = {
    }
	static hasMany = [trip: Trip]
	
	String name
	String airlineNumber
	String url
	String frequentFlyer
	String notes
}
