package com.security

import grails.converters.JSON
import grails.rest.RestfulController

class UserController extends RestfulController<User>{
    def springSecurityService

    static responseFormats = ['json', 'xml']

    UserController(){
        super(User)
    }

    @Override
    def index(final Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def instanceList = listAllResources(params)
        if(instanceList.totalCount == 0){
            respond (["data":[]])
        }
        respond instanceList, [metadata: [total: instanceList.totalCount, psize: params.max, offset: params.offset?:0]]
    }

    @Override
    def show() {
        //JSON.use("details")

        if(params.scope == "me"){
            if(!springSecurityService.currentUser){
                respond (["data":[]])
            }
            def user = springSecurityService.currentUser
            params.id = user?.id
        }
        respond queryForResource(params.id)
    }

}
