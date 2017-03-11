package com.league.api.marshallers

import grails.converters.JSON
import com.league.League

class ListMarshaller {

	void register() {

		JSON.createNamedConfig('list') { JSONConfig ->
			
			// JSONConfig.registerObjectMarshaller(League) {
			// 	return [
			// 		'id': it.id,
			// 		'name': it.name
			// 	]
			// }
			
		}
	}
}
