class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')

        "/api/leagues" (resources:"League")
        "/api/users" (resources:"User")
        "/api/me" (resource:"User"){ scope = "me" }
	}
}
