import com.league.api.CustomJsonCollectionRenderer
import com.league.api.CustomJsonRenderer
import com.league.api.marshallers.CustomObjectMarshallers
import com.league.api.marshallers.DefaultMarshaller
import com.league.api.marshallers.DetailsMarshaller
import com.league.api.marshallers.EditMarshaller
import com.league.api.marshallers.ListMarshaller

beans = {

  //Object Marshallers
  customObjectMarshallers( CustomObjectMarshallers ) {
    marshallers = [
        new DetailsMarshaller(),
        new ListMarshaller(),
        new EditMarshaller(),
        new DefaultMarshaller()
    ]
  }
  
  //Json Rendered
  for (domainClass in grailsApplication.domainClasses) {
    "json${domainClass.shortName}CollectionRenderer"(CustomJsonCollectionRenderer, domainClass.clazz)
    "json${domainClass.shortName}Renderer"(CustomJsonRenderer, domainClass.clazz)
  }

}
