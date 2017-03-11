package com.league.api.marshallers

import grails.converters.JSON
import com.league.League

class DetailsMarshaller {

	void register() {

		JSON.createNamedConfig('details') { JSONConfig ->


		}
	}
}
