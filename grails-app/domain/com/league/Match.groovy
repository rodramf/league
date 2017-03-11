package com.league

import com.security.User

class Match {
    Date dateMatch
    String placeDirection
    Date startTime
    Date endTime
    Integer numberOfTeamPlayers
    MatchStatus status
    Team teamA
    Team teamB
    Date dateCreated
    Date lastUpdated

    static hasMany = [
      enrolledPlayers: User
    ]

    static constraints = {
    }
}
