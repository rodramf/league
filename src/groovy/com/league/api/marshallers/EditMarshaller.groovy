package com.league.api.marshallers

import grails.converters.JSON
import com.league.League

class EditMarshaller {

	void register() {

		JSON.createNamedConfig('edit') { JSONConfig ->
			
			// JSONConfig.registerObjectMarshaller(League) {
			// 	return  [
			// 	'id': it.id,
			// 	'name': it.name
			// 	]
			// }

		}
	}
}
