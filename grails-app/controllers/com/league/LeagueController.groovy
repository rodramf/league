package com.league

import grails.rest.RestfulController

class LeagueController extends RestfulController<League>{

  static responseFormats = ['json', 'xml']

  LeagueController(){
    super(League)
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

}
