package com.league.api.marshallers

class CustomObjectMarshallers {
	
	List marshallers = []
	
		def register() {
			marshallers.each{ it.register() }
		}

}
