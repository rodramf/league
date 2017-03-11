package com.league

class Match {
    Date dateMatch
    String placeDirection
    Date startTime
    Date endTime
    Integer numberOfTeamPlayers
    MatchStatus status
    Date dateCreated
    Date lastUpdated

    static hasMany = [
      players: PlayerMatch
    ]

    static constraints = {
    }
}
