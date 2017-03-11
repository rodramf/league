package com.league

import com.security.User

class Review {
    User user
    String description
    Player player
    Match match
    Integer points
    Date dateCreated
    Date lastUpdated

    static constraints = {
      player nullable:true
      match nullable:true
      points nullable:true
    }
}
