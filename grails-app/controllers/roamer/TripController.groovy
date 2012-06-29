package roamer

class TripController {

    def index() { redirect(action:list , params:params ) }
	
	def list = {
		if(!params.max) params.max=10
		[tripList:  Trip.list(params)]
	}
	
	def save = {
		def trip = new Trip(params)
		if(!trip.hasErrors() && trip.save()){
			flash.message = "Trip ${trip.id} created"
			redirect(action:show , id:trip.id)
		}
		else {
			render(view: 'create' , model: [trip:trip])
		}
	}
}
