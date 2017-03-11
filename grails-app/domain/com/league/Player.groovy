package com.league

import com.security.User

class Player {
    Date dateCreated
    Date lastUpdated
    Integer goals
    Integer points

    static belongsTo = [
      team: Team,
      user: User
    ]

    static hasMany = [
      reviews: Review
    ]

    static constraints = {
      goals nullable:true
      points nullable:true
    }
}
