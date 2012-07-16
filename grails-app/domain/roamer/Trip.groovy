package roamer

import roamer.Airline;

class Trip {

    static constraints = {
    }
	static belongsTo = [airline: Airline]
	
	String nameOfPlace
	String city
	Date startDate
	Date endDate
	String tripDescription
	String tripNotes
	
	Airline airline
	
	
}
