package com.league

class League {
    String name
    String sortDescription
    String description
    Schedule schedule
    String defaultPlaceDirection
    Date defaultStartTime
    Date defaultEndTime
    Integer defaultNumberOfTeamPlayers
    Date dateCreated
    Date lastUpdated

    static hasMany = [
      players: Player,
      matchs: Match
    ]

    static constraints = {
      sortDescription nullable:true
      schedule nullable:true
      defaultPlaceDirection nullable:true
      defaultStartTime nullable:true
      defaultEndTime nullable:true
      defaultNumberOfTeamPlayers nullable:true
    }
}
