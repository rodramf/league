package com.league.api.marshallers

import grails.converters.JSON
import com.league.League

class DefaultMarshaller {

	void register() {
		
		JSON.registerObjectMarshaller(League) {
			return [
				'id': it.id,
				'name': it.name
			]
		}
		
	}
}
